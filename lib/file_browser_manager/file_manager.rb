class FileManager

  attr_accessor :root_path

  def initialize root_path
    @root_path = root_path
  end

  def list_folder(path = nil)
    elements = Dir.glob([root_path, path, '*'].compact.join('/'))
    list = elements.map do |element|
      name = File.basename element
      type = File.directory?(element) ? 'dir' : 'file'
      download_link = type == 'file' ? [path, name].compact.join('/') : nil

      {name: name, path: [path, name].compact.join('/'), download_link: download_link, type: type}
    end

    return list.sort_by{ |element| [element[:type], element[:name].downcase] }
  end

end
