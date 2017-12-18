class FileManager

  attr_accessor :root_path

  def initialize root_path
    @root_path = root_path
  end

  def list_folder(path = nil)
    elements = Dir.glob([root_path, path, '*'].compact.join('/'))
    list = elements.map do |element|
      name = File.basename element
      {name: name, path: [path, name].compact.join('/'), type: File.directory?(element) ? 'dir' : 'file'}
    end

    return list.sort_by{ |element| element[:name] }.sort_by { |element| element[:type] }
  end

end
