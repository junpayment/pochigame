Dir.glob("#{Rails.root}/db/seeds/*.yml").each do |yaml_filename|
  model = File.basename(yaml_filename,".yml").classify.constantize
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)
    records.each do |record|
      model.create(record)
    end
  end
end
