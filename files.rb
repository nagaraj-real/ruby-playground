
class File
  def File.openAndProcess(*args)
    f = File.open(*args)
    yield f
    f.close()
  end
end

class File2
  def File.myOpen(*args)
    aFile = File.new(*args)
    # If there's a block, pass in the file and close
    # the file when it returns
    if block_given?
      yield aFile
      aFile.close
      aFile = nil
    end
    return aFile
  end
end

File.openAndProcess("testfile", "r") do |aFile|
  print while aFile.gets
end

# The only difference between this notation and using braces to define blocks is precedence:
# do...end binds lower than ``{...}''
