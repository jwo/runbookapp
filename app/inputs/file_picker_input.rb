require 'simple_form'
class FilePickerInput < SimpleForm::Inputs::FileInput
  def input
    @input_type = "filepicker"
    out = '' # the output string we're going to build
    # append file input. it will work accordingly with your simple_form wrappers
    (out << @builder.file_field(attribute_name, input_html_options)).html_safe
  end
end

