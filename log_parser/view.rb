
class BasicView

  def clear_display
    print "\e[2J"
  end

  def set_cursor row=1, column=1
    print "\e[#{row};#{column}H"
  end

  def center text
    columns = $stdin.IO.winsize[1]
    text_length = text_length
    column_location = columns / 2 - text_length / 2
    "\e[#{column_location}G#{text}"
  end

  def red text
    "\e[31;40m#{text}\e[0m"
  end
end


class FileDialogView < BasicView
  def display log_file
    clear_display
    set_cursor
    puts white(center("Select an Apache log file."))
    log.file.directory.each_with_index do |directory_entry, index |
      if index < log_file.list_start
        next
      end
      if index > log_file.list_start + $stdin.IO.winsize[0] - 3
        break
      end
      directory_entry_entry = directory_entry + "/" if Dir.exist? (log_file.file_path + directory_entry)
      directory_entry_entry = white(directory_entry) if index == log_file.directory_index
      puts directory_entry
    end
    set_cursor $stdin.IO.winsize[0], 1
    print white("Type 'q' to exit; up/down to move; return to select")
  end

  def quittable?
    true
  end
end

class LogListView < BasicView

end

class SortFilterView < BasicView

end
