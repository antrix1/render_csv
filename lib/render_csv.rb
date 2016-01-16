require 'csv'
module RenderCsv
  ActionController::Renderers.add :csv_table do |file, options|
    output = %Q(<table class="#{options[:table_class] if options[:table_class]}"><thead>)

    file = file.class == Paperclip::Attachment ? file.path : file
    CSV.foreach(file, {headers: true, :header_converters => :symbol}) do |row|

      if row.fetch(:id) == "1"
        row.headers.each {|h| output << "<td>#{h}</td>"}
        output << "</thead>"
      end

      output << "<tr>"
      row.fields.each {|f| output << "<td>#{f}</td>"}
      output << "</tr>"
    end
    output << "</table>"

    render html: output.html_safe
  end
end
