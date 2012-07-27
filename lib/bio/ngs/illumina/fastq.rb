module Bio
  module Ngs
    module Illumina
      # module Fastx
      #   include Fs::Utility
      # end #Fastx


      def filter(file)
        if File.exists? file
          filtered_file_basename = File.basename(file)
          filtered_dir =  File.join(File.dirname,"filtered")
          Dir.mkdir(filtered_dir) unless Dir.exists?(filtered_dir)
          FastqGz.gets_compressed(filtered_file_basename) do |compress|
            FastqGz.gets_filtered(ftest) do |read_header, reader_seq, read_splitter, read_qual|
             compress.write(read_header + reader_seq + read_splitter + read_qual)
            end
          end
       else
        raise "Bio::Ngs::Illumina.filter : unkown file #{file}"
       end 
      end

      module FastqGz #TODO this module can be move in another namespace more generic
        require 'zlib'
        class << self

        # Return the number of reads processed
        def gets_uncompressed(file, &block)
          n_reads = 0
          Zlib::GzipReader.open(file) do |gz|
            while  header=gz.gets
              #seq, splitter, qual = gz.gets, gz.gets, gz.gets
              n_reads+=1
              #yield header, seq, splitter, qual
              yield header, gz.gets, gz.gets, gz.gets
            end #while
            gz.close
          end #GzipReader
          n_reads
        end #gets_uncompressed

        
        def gets_compressed(file, &block)
          Zlib::GzipWriter.open(file) do |gz|
           yield gz
           gz.close
         end
       end

        # Return the number of reads processed
        def gets_filtered(file, &block)
          n_reads = 0
          gets_uncompressed(file) do |header, seq, splitter, qual|
           if header=~/^@.* [^:]*:N:[^:]*:/ 
            n_reads+=1
                #pass to the block header, fasta, quality splitter, quality
                yield header, seq, splitter, qual, n_reads if block_given?
              end
          end #GzipReader
          n_reads
        end #gets_filtered


        # splits a fastq gz file in many files each with at most n reads defined by size
        def split(file, size)
          postfix = 1
          counter = 1
          ofile = "#{file}".sub(/fastq\.gz/, "fastq.#{postfix}.gz")
          ofh = Zlib::GzipWriter.open(ofile)
          gets_filtered(file) do |header, seq, splitter, qual, n_reads|
              if counter<=size
                ofh.write(header + seq + splitter + qual)
                counter+=1
              else
                postfix+=1
                ofile = "#{file}".sub(/fastq\.gz/, "fastq.#{postfix}.gz")
                ofh.close
                counter = 1
                ofh = Zlib::GzipWriter.open(ofile)
                ofh.write(header + seq + splitter + qual)
              end
          end #filtered
          ofh.close
        end #split
      end #FastqGz

  # desc "illumina_filter [DIR(s)]", "Filter the data using Y/N flag in FastQ headers (Illumina). Search for fastq.gz files within directory(ies) passed."
  # method_option :compression, :type => :string, :default => "pigz"
  # method_option :cpu, :type => :numeric, :default => 4
  # def illumina_filter(dir)
  #   folders = Dir.glob(dir)
  #   cmd_blocks = []
  #   folders.each do |folder|
  #     Parallel.each(Dir.glob(folder+"/*.fastq.gz").sort,:in_processes => options[:cpu].to_i) do |fastq|
  #       Dir.mkdir(folder+"/filtered") unless Dir.exists? folder+"/filtered"
  #       fastq = fastq.split("/")[-1]
  #       system("zcat #{folder+"/"+fastq} | grep -A 3 '^@.* [^:]*:N:[^:]*:' | grep -v '^\-\-'| #{options[:compression]} > #{folder}/filtered/#{fastq}")
  #     end
  #   end
  # end
  
  
  # desc "merge [file(s)]","Merge together fastQ files (accepts wildcards)"
  # method_option :compressed, :type => :boolean, :default => true
  # def merge(file)
  #   files = Dir.glob(file).sort
  #   cat = (options[:compressed]) ? "zcat" : "cat"
  #   files.each do |file|
  #     system("#{cat} #{file} >> merged_reads.fastq")
  #   end
  # end
  
  # desc "paired_merge [file(s)]","Merge together FastQ files while checking for correct pairing (accepts wildcards)"
  # method_option :compressed, :type => :boolean, :default => false
  # def paired_merge(file)
  #   files = Dir.glob(file).sort.find_all {|f| f=~/_R1_/}
  #   cat = (options[:compressed] == true) ? "zcat" : "cat"
  #   files.each do |r1|
  #     r2 = r1.gsub(/_R1_/,"_R2_")
  #     if File.exists? r2
  #       r1_count = count_reads(r1,compressed:options[:compressed])
  #       r2_count = count_reads(r2,compressed:options[:compressed])
  #       puts "Read count: #{r1_count} : #{r2_count} , #{file}"
  #         if r1_count == r2_count
  #           Parallel.each(["R1","R2"],:in_processes => options[:cpu].to_i) do |read|
  #             filename = (read == "R1") ? r1 : r2
  #             system "#{cat} #{filename} >> #{read}_reads.fastq"
  #           end
  #         else
  #           raise RuntimeError "Error: files #{r1} and #{r2} do not have the same number of reads!"
  #         end
  #     else
  #       puts "WARN: file #{r2} does not exist! Reads from #{r1} will be considered as singlets"
  #       system("#{cat} #{r1} >> singlets_reads.fastq")
  #     end  
  #   end
  # end
  
  # desc "uncompress [file(s)]","Uncompress multiple files in parallel (accepts wildcards)"
  # method_option :cpu, :type => :numeric, :default => 4
  # def uncompress(file)
  #   files = Dir.glob(file).sort
  #   blocks = []
  #   Parallel.each(files,:in_processes => options[:cpu].to_i) do |file|
  #     system("gunzip #{file}")
  #   end
  # end
  
  
  # desc "trim [fastq(s)]","Calulate quality profile and trim the all the reads using FastX (accepts wildcards)"
  # method_option :cpu, :type => :numeric, :default => 4
  # method_option :min_qual, :type => :numeric, :default => 20
  # def trim(file)
  #   list = Dir.glob(file).sort
  #   groups = list / options[:cpu].to_i # get group of files equal to number of CPUs
  #   cmd_blocks = []
  #   groups.each do |files|
  #     Parallel.each(files, :in_processes => options[:cpu].to_i) do |file|
  #       invoke "quality:fastq_stats", [file], {output:file+".stats"}
  #       trim_position = options[:read_length]
  #       lines = File.read(file+".stats").split("\n")
  #       if lines.size == 0
    #       raise RuntimeError, "Error in Quality Stats file! Check fastx_quality_stat output"
   #      end
   #      read_length = (lines.size) -1
  #       lines[1..-1].each_with_index do |line,index|
  #         if line.split("\t")[7].to_i <= options[:min_qual]
  #           trim_position = index +1
  #           break
  #         end 
  #       end
  #       if trim_position == options[:read_length]
  #         puts "WARN: no bases under quality cutoff. No trimming needed on #{file}"
  #         FileUtils.cp file, file+".ready"
  #       elsif trim_position < 25 
  #           puts "WARN: Trimming on #{file} will produce reads that are too short. The file will be discarded, please check quality scores."
  #       else
  #         puts "Trimming on position #{trim_position} for #{file}"
  #         trim = Bio::Ngs::Fastx::Trim.new
  #         trim.params={trim:read_length-trim_position+1, input:file, output:file+".ready"}
  #         trim.run
  #       end
  #     end
  #   end
  # end
  
  # private
  
  # def count_reads(file,opts = {compressed:false})
  #   cat = (opts[:compressed] == true) ? "zcat" : "cat"
  #   total = `#{cat} #{file} | wc -l`.to_i / 4
  # end
  

      end #FastqGz
    end #Illumina
  end #Ngs
end #Bio