import Mixin from '@ember/object/mixin'

ExportMixin = Mixin.create
  addTypeHeader: (file, type) ->
    @_addRecordToFile(file, type)

    # add header padding row
    @_addRecordToFile(file, "----")

  addRecordsToFile: (file, messages) ->
    for message in messages
      @_addRecordToFile(file, message)

    # insert padding row between responses
    @_addRecordToFile(file, "")

  saveFile: (file) ->
    fileBlob = new Blob(file, type: 'text/plain;charset=utf-8')
    saveAs(fileBlob, "retrospective_responses.txt")

  _addRecordToFile: (file, message) ->
    file.push(message + "\r\n")

export default ExportMixin
