begin
  ActiveRecord::Base.transaction do
    Dir.glob("#{Rails.root}/db/seeds/*.yml").each do |yaml_filename|
      model = File.basename(yaml_filename,".yml").classify.constantize
      File.open(yaml_filename) do |load_target_yaml|
        records = YAML.load(load_target_yaml)
        p yaml_filename
        records.each do |record|
          model.create!(record)
        end
      end
    end
  end
rescue
  raise ActiveRecord::Rollback
end
