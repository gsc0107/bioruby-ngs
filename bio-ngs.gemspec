# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "bio-ngs"
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Francesco Strozzi", "Raoul J.P. Bonnal"]
  s.date = "2013-05-16"
  s.description = "bio-ngs provides a framework for handling NGS data with BioRuby"
  s.email = "francesco.strozzi@gmail.com"
  s.executables = ["biongs"]
  s.extensions = ["ext/mkrf_conf.rb"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/biongs",
    "bio-ngs.gemspec",
    "ext/mkrf_conf.rb",
    "features/cuffcompare_fix_gtf.feature",
    "features/cufflinks_gtf_parser.feature",
    "features/cufflinks_gtf_parser_indexing.feature",
    "features/illumina_project_rebuild.feature",
    "features/step_definitions/cuffcompare_fix_gtf.rb",
    "features/step_definitions/cufflinks_gtf.rb",
    "features/step_definitions/cufflinks_gtf_parser_indexing.rb",
    "features/step_definitions/illumina_project_rebuild.rb",
    "features/support/env.rb",
    "lib/bio-ngs.rb",
    "lib/bio/appl/ngs/bcftools.rb",
    "lib/bio/appl/ngs/bcl2qseq.rb",
    "lib/bio/appl/ngs/blast.rb",
    "lib/bio/appl/ngs/bowtie-inspect.rb",
    "lib/bio/appl/ngs/bwa.rb",
    "lib/bio/appl/ngs/casava.rb",
    "lib/bio/appl/ngs/cufflinks.rb",
    "lib/bio/appl/ngs/cufflinks/gtf/exon.rb",
    "lib/bio/appl/ngs/cufflinks/gtf/gtf.rb",
    "lib/bio/appl/ngs/cufflinks/gtf/gtf_parser.rb",
    "lib/bio/appl/ngs/cufflinks/gtf/rdf.rb",
    "lib/bio/appl/ngs/cufflinks/gtf/transcript.rb",
    "lib/bio/appl/ngs/cufflinks/iterators.rb",
    "lib/bio/appl/ngs/fastx.rb",
    "lib/bio/appl/ngs/samtools.rb",
    "lib/bio/appl/ngs/sff_extract.rb",
    "lib/bio/appl/ngs/tophat.rb",
    "lib/bio/ngs/converter.rb",
    "lib/bio/ngs/core_ext.rb",
    "lib/bio/ngs/db.rb",
    "lib/bio/ngs/db/migrate/homology/201105030707_create_blastout.rb",
    "lib/bio/ngs/db/migrate/homology/201105030709_create_goannotation.rb",
    "lib/bio/ngs/db/migrate/ontology/201105030708_create_go.rb",
    "lib/bio/ngs/db/migrate/ontology/201105030710_create_gene_go.rb",
    "lib/bio/ngs/db/migrate/ontology/201105030711_create_gene.rb",
    "lib/bio/ngs/db/models.rb",
    "lib/bio/ngs/db/models/homology.rb",
    "lib/bio/ngs/db/models/ontology.rb",
    "lib/bio/ngs/ext/bin/common/fastq_coverage_graph.sh",
    "lib/bio/ngs/ext/bin/common/sff_extract",
    "lib/bio/ngs/ext/bin/linux/samtools",
    "lib/bio/ngs/ext/bin/osx/samtools",
    "lib/bio/ngs/ext/versions.yaml",
    "lib/bio/ngs/fs.rb",
    "lib/bio/ngs/graphics.rb",
    "lib/bio/ngs/homology.rb",
    "lib/bio/ngs/illumina/fastq.rb",
    "lib/bio/ngs/illumina/illumina.rb",
    "lib/bio/ngs/illumina/project.rb",
    "lib/bio/ngs/illumina/sample.rb",
    "lib/bio/ngs/labs.rb",
    "lib/bio/ngs/ontology.rb",
    "lib/bio/ngs/quality.rb",
    "lib/bio/ngs/record.rb",
    "lib/bio/ngs/task.rb",
    "lib/bio/ngs/utils.rb",
    "lib/enumerable.rb",
    "lib/meta.rb",
    "lib/tasks/bwa.thor",
    "lib/tasks/convert.thor",
    "lib/tasks/filter.thor",
    "lib/tasks/history.thor",
    "lib/tasks/homology.thor",
    "lib/tasks/install.thor",
    "lib/tasks/ontology.thor",
    "lib/tasks/pre.thor",
    "lib/tasks/project.thor",
    "lib/tasks/quality.thor",
    "lib/tasks/report.thor",
    "lib/tasks/rna.thor",
    "lib/tasks/sff_extract.thor",
    "lib/tasks/smart.thor",
    "lib/templates/README.tt",
    "lib/templates/db.tt",
    "lib/wrapper.rb",
    "spec/bio/ngs/fs_spec.rb",
    "spec/bio/ngs/illumina/fastq_spec.rb",
    "spec/bio/ngs/illumina/illumina_spec.rb",
    "spec/bio/ngs/illumina/project_spec.rb",
    "spec/bio/ngs/illumina/sample_spec.rb",
    "spec/bio/ngs/illumina/samples_spec.rb",
    "spec/converter_qseq_spec.rb",
    "spec/filter_spec.rb",
    "spec/fixture/s_1_1_1108_qseq.txt",
    "spec/fixture/table_filter_list.txt",
    "spec/fixture/table_filter_list_first_column.txt",
    "spec/fixture/table_filter_source.tsv",
    "spec/fixture/test-filtered-reference.fastq.gz",
    "spec/fixture/test-merged-reference.fastq.gz",
    "spec/fixture/test.fastq.gz",
    "spec/meta_spec.rb",
    "spec/quality_spec.rb",
    "spec/sff_extract_spec.rb",
    "spec/spec_helper.rb",
    "spec/tophat_spec.rb",
    "spec/utils_spec.rb",
    "test/conf/projects.yaml",
    "test/conf/test_db.yml",
    "test/data/Project_Cow/Sample_SQ_0007/SQ_0007_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/SQ_0007_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/SQ_0007_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/SQ_0007_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/filtered/SQ_0007_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/filtered/SQ_0007_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/filtered/SQ_0007_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/filtered/SQ_0007_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/trimmed/SQ_0007_CGATGT_L003_R1_TRIMMED.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0007/trimmed/SQ_0007_CGATGT_L003_R2_TRIMMED.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0008/SQ_0008_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0008/SQ_0008_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0008/SQ_0008_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0008/SQ_0008_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0009/SQ_0009_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0009/SQ_0009_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0009/SQ_0009_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Cow/Sample_SQ_0009/SQ_0009_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0004/SQ_0004_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0004/SQ_0004_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0004/SQ_0004_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0004/SQ_0004_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0005/SQ_0005_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0005/SQ_0005_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0005/SQ_0005_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0005/SQ_0005_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0006/SQ_0006_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0006/SQ_0006_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0006/SQ_0006_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Dog/Sample_SQ_0006/SQ_0006_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0001/SQ_0001_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0001/SQ_0001_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0001/SQ_0001_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0001/SQ_0001_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0002/SQ_0002_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0002/SQ_0002_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0002/SQ_0002_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0002/SQ_0002_CGATGT_L003_R2_002.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0003/SQ_0003_CGATGT_L003_R1_001.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0003/SQ_0003_CGATGT_L003_R1_002.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0003/SQ_0003_CGATGT_L003_R2_001.fastq.gz",
    "test/data/Project_Human/Sample_SQ_0003/SQ_0003_CGATGT_L003_R2_002.fastq.gz",
    "test/data/blastoutput.xml",
    "test/data/gene-GO.json",
    "test/data/goa_uniprot",
    "test/data/goslim_goa.obo",
    "test/helper.rb",
    "test/test_bio-ngs.rb",
    "test/test_db.rb",
    "test/test_homology.rb",
    "test/test_ngs.rb",
    "test/test_ontology.rb",
    "test/test_utils.rb"
  ]
  s.homepage = "http://github.com/helios/bioruby-ngs"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "bio-ngs provides a framework for handling NGS data with BioRuby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bio>, [">= 1.4.2"])
      s.add_runtime_dependency(%q<bio-samtools>, [">= 0.3.2"])
      s.add_runtime_dependency(%q<thor>, ["= 0.14.6"])
      s.add_runtime_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_runtime_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<parallel>, [">= 0"])
      s.add_runtime_dependency(%q<bio-blastxmlparser>, [">= 0"])
      s.add_runtime_dependency(%q<jdbc-sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
      s.add_runtime_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<bio>, [">= 1.4.2"])
      s.add_development_dependency(%q<jdbc-sqlite3>, [">= 0"])
      s.add_development_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<thor>, ["= 0.14.6"])
      s.add_development_dependency(%q<ffi>, [">= 1.0.6"])
      s.add_development_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_development_dependency(%q<bio-samtools>, [">= 0.3.2"])
      s.add_development_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_development_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_development_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<parallel>, [">= 0"])
      s.add_development_dependency(%q<bio-blastxmlparser>, [">= 0"])
    else
      s.add_dependency(%q<bio>, [">= 1.4.2"])
      s.add_dependency(%q<bio-samtools>, [">= 0.3.2"])
      s.add_dependency(%q<thor>, ["= 0.14.6"])
      s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<parallel>, [">= 0"])
      s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
      s.add_dependency(%q<jdbc-sqlite3>, [">= 0"])
      s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.3.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<bio>, [">= 1.4.2"])
      s.add_dependency(%q<jdbc-sqlite3>, [">= 0"])
      s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<thor>, ["= 0.14.6"])
      s.add_dependency(%q<ffi>, [">= 1.0.6"])
      s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_dependency(%q<bio-samtools>, [">= 0.3.2"])
      s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<parallel>, [">= 0"])
      s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
    end
  else
    s.add_dependency(%q<bio>, [">= 1.4.2"])
    s.add_dependency(%q<bio-samtools>, [">= 0.3.2"])
    s.add_dependency(%q<thor>, ["= 0.14.6"])
    s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
    s.add_dependency(%q<daemons>, [">= 1.1.0"])
    s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
    s.add_dependency(%q<activerecord>, [">= 3.0.5"])
    s.add_dependency(%q<progressbar>, [">= 0.9.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<parallel>, [">= 0"])
    s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
    s.add_dependency(%q<jdbc-sqlite3>, [">= 0"])
    s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.3.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<bio>, [">= 1.4.2"])
    s.add_dependency(%q<jdbc-sqlite3>, [">= 0"])
    s.add_dependency(%q<activerecord-jdbcsqlite3-adapter>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<thor>, ["= 0.14.6"])
    s.add_dependency(%q<ffi>, [">= 1.0.6"])
    s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<daemons>, [">= 1.1.0"])
    s.add_dependency(%q<bio-samtools>, [">= 0.3.2"])
    s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
    s.add_dependency(%q<activerecord>, [">= 3.0.5"])
    s.add_dependency(%q<progressbar>, [">= 0.9.0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<parallel>, [">= 0"])
    s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
  end
end

