class CustomFile 
    def getPath 
      File.expand_path(".", __FILE__)
    end
    def isCatalog (nameFile)
        File.directory?(nameFile)
    end
    def isExist (nameFile)
        File.zero?(nameFile)
    end
    def getTime (nameFile)
      File.ctime(nameFile)
    end
  end
  
  class CustomHash
    def isValid (key, value, block)
      [key, value].any?(block)
    end
    def isEmpty
      {}.empty?
    end
  end
  
  class CustomSymbol
    def getAllSymbols
      Symbol.all_symbols
    end
    def isMiddle (symbol, firastValue, secondValue)
      #если 0, то лежит между, иначе нет
      symbol = (symbol.to_s).encode(Encoding::ASCII_8BIT)
      firastValue = (symbol.to_s).encode(Encoding::ASCII_8BIT)
      secondValue = (symbol.to_s).encode(Encoding::ASCII_8BIT)
      (symbol <=> firastValue) + (symbol <=> secondValue) 
  
    end
  end
  
  class CustomTime
    def currentTime
      Time.now
    end
    def isFriday
      Time.now.friday?
    end  
    def getTimeZone
      Time.gm(2000, "jan", 1, 20, 15, 1).zone
    end 
  end