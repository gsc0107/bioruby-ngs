# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bio-ngs}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Francesco Strozzi", "Raoul J.P. Bonnal"]
  s.date = %q{2011-07-26}
  s.default_executable = %q{biongs}
  s.description = %q{bio-ngs provides a framework for handling NGS data with BioRuby}
  s.email = %q{francesco.strozzi@gmail.com}
  s.executables = ["biongs"]
  s.extensions = ["ext/mkrf_conf.rb"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/biongs",
    "bio-ngs.gemspec",
    "ext/mkrf_conf.rb",
    "lib/bio-ngs.rb",
    "lib/bio/appl/ngs/bcl2qseq.rb",
    "lib/bio/appl/ngs/blast.rb",
    "lib/bio/appl/ngs/bowtie-inspect.rb",
    "lib/bio/appl/ngs/cufflinks.rb",
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
    "lib/bio/ngs/graphics.rb",
    "lib/bio/ngs/homology.rb",
    "lib/bio/ngs/ontology.rb",
    "lib/bio/ngs/quality.rb",
    "lib/bio/ngs/record.rb",
    "lib/bio/ngs/task.rb",
    "lib/bio/ngs/utils.rb",
    "lib/tasks/bwa.thor",
    "lib/tasks/convert.thor",
    "lib/tasks/history.thor",
    "lib/tasks/homology.thor",
    "lib/tasks/ontology.thor",
    "lib/tasks/project.thor",
    "lib/tasks/quality.thor",
    "lib/tasks/rna.thor",
    "lib/tasks/sff_extract.thor",
    "lib/templates/README.tt",
    "lib/templates/db.tt",
    "lib/wrapper.rb",
    "spec/converter_qseq_spec.rb",
    "spec/fixture/s_1_1_1108_qseq.txt",
    "spec/quality_spec.rb",
    "spec/sff_extract_spec.rb",
    "spec/spec_helper.rb",
    "spec/tophat_spec.rb",
    "spec/utils_spec.rb",
    "test/conf/test_db.yml",
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
  s.homepage = %q{http://github.com/helios/bioruby-ngs}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{bio-ngs provides a framework for handling NGS data with BioRuby}
  s.test_files = [
    "spec/converter_qseq_spec.rb",
    "spec/cufflinks_spec.rb",
    "spec/quality_spec.rb",
    "spec/sff_extract_spec.rb",
    "spec/spec_helper.rb",
    "spec/tophat_spec.rb",
    "spec/utils_spec.rb",
    "test/helper.rb",
    "test/test_bio-ngs.rb",
    "test/test_db.rb",
    "test/test_homology.rb",
    "test/test_ngs.rb",
    "test/test_ontology.rb",
    "test/test_utils.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bio>, [">= 1.4.1"])
      s.add_runtime_dependency(%q<bio-bwa>, [">= 0.2.2"])
      s.add_runtime_dependency(%q<bio-samtools>, [">= 0.0.0"])
      s.add_runtime_dependency(%q<thor>, [">= 0.14.6"])
      s.add_runtime_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_runtime_dependency(%q<sqlite3>, [">= 1.3.3"])
      s.add_runtime_dependency(%q<bio-blastxmlparser>, [">= 0"])
      s.add_runtime_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<bio>, [">= 1.4.1"])
      s.add_development_dependency(%q<thor>, [">= 0.14.6"])
      s.add_development_dependency(%q<ffi>, [">= 1.0.6"])
      s.add_development_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_development_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_development_dependency(%q<bio-samtools>, [">= 0.0.0"])
      s.add_development_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_development_dependency(%q<bio-bwa>, [">= 0.2.2"])
      s.add_development_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_development_dependency(%q<sqlite3>, [">= 1.3.3"])
      s.add_development_dependency(%q<bio-blastxmlparser>, [">= 0"])
      s.add_development_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_development_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<bio>, [">= 1.4.1"])
      s.add_dependency(%q<bio-bwa>, [">= 0.2.2"])
      s.add_dependency(%q<bio-samtools>, [">= 0.0.0"])
      s.add_dependency(%q<thor>, [">= 0.14.6"])
      s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_dependency(%q<sqlite3>, [">= 1.3.3"])
      s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
      s.add_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<bio>, [">= 1.4.1"])
      s.add_dependency(%q<thor>, [">= 0.14.6"])
      s.add_dependency(%q<ffi>, [">= 1.0.6"])
      s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
      s.add_dependency(%q<rspec>, [">= 2.5.0"])
      s.add_dependency(%q<daemons>, [">= 1.1.0"])
      s.add_dependency(%q<bio-samtools>, [">= 0.0.0"])
      s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
      s.add_dependency(%q<bio-bwa>, [">= 0.2.2"])
      s.add_dependency(%q<activerecord>, [">= 3.0.5"])
      s.add_dependency(%q<sqlite3>, [">= 1.3.3"])
      s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
      s.add_dependency(%q<progressbar>, [">= 0.9.0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<bio>, [">= 1.4.1"])
    s.add_dependency(%q<bio-bwa>, [">= 0.2.2"])
    s.add_dependency(%q<bio-samtools>, [">= 0.0.0"])
    s.add_dependency(%q<thor>, [">= 0.14.6"])
    s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
    s.add_dependency(%q<daemons>, [">= 1.1.0"])
    s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
    s.add_dependency(%q<activerecord>, [">= 3.0.5"])
    s.add_dependency(%q<sqlite3>, [">= 1.3.3"])
    s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
    s.add_dependency(%q<progressbar>, [">= 0.9.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<bio>, [">= 1.4.1"])
    s.add_dependency(%q<thor>, [">= 0.14.6"])
    s.add_dependency(%q<ffi>, [">= 1.0.6"])
    s.add_dependency(%q<rubyvis>, [">= 0.5.0"])
    s.add_dependency(%q<rspec>, [">= 2.5.0"])
    s.add_dependency(%q<daemons>, [">= 1.1.0"])
    s.add_dependency(%q<bio-samtools>, [">= 0.0.0"])
    s.add_dependency(%q<ruby-ensembl-api>, [">= 1.0.1"])
    s.add_dependency(%q<bio-bwa>, [">= 0.2.2"])
    s.add_dependency(%q<activerecord>, [">= 3.0.5"])
    s.add_dependency(%q<sqlite3>, [">= 1.3.3"])
    s.add_dependency(%q<bio-blastxmlparser>, [">= 0"])
    s.add_dependency(%q<progressbar>, [">= 0.9.0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end

