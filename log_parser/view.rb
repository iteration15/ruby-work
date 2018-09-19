
class BasicView

  def clear_display
    print "\e[2J"
  end

  def set_cursor row=1, column=1
    print "\e[#{row};#{column}H"
  end

end


class FileDialogView < BasicView
  def display
    puts "Select an Apache log file."
  end
end

class LogListView < BasicView

end

class SortFilterView < BasicView

end
