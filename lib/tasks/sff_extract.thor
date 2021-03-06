class Sff < Thor
  
  desc "extract [FILE]", "Run sff_extract on a SFF file"
  Bio::Ngs::SffExtract.new.thor_task(self, :extract) do |wrapper, task, file|
    wrapper.params = task.options
    puts wrapper.run :arguments => [file]
  end
  
end