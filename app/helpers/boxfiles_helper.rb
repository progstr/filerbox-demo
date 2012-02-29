module BoxfilesHelper
  def filetype_icon(filetype)
    icons = Hash.new
    icons = {
      'application/postscript' => 'ai',
      'audio/x-aiff' => 'aif',
      'audio/x-aiff' => 'aifc',
      'audio/x-aiff' => 'aiff',
      'text/plain' => 'asc',
      'application/atom+xml' => 'atom',
      'audio/basic' => 'au',
      'video/x-msvideo' => 'avi',
      'application/x-bcpio' => 'bcpio',
      'application/octet-stream' => 'bin',
      'image/bmp' => 'bmp',
      'application/x-netcdf' => 'cdf',
      'image/cgm' => 'cgm',
      'application/octet-stream' => 'class',
      'application/x-cpio' => 'cpio',
      'application/mac-compactpro' => 'cpt',
      'application/x-csh' => 'csh',
      'text/css' => 'css',
      'application/x-director' => 'dcr',
      'video/x-dv' => 'dif',
      'application/x-director' => 'dir',
      'image/vnd.djvu' => 'djv',
      'image/vnd.djvu' => 'djvu',
      'application/octet-stream' => 'dll',
      'application/octet-stream' => 'dmg',
      'application/octet-stream' => 'dms',
      'application/msword' => 'doc',
      'application/xml-dtd' => 'dtd',
      'video/x-dv' => 'dv',
      'application/x-dvi' => 'dvi',
      'application/x-director' => 'dxr',
      'application/postscript' => 'eps',
      'text/x-setext' => 'etx',
      'application/octet-stream' => 'exe',
      'application/andrew-inset' => 'ez',
      'image/gif' => 'gif',
      'application/srgs' => 'gram',
      'application/srgs+xml' => 'grxml',
      'application/x-gtar' => 'gtar',
      'application/x-hdf' => 'hdf',
      'application/mac-binhex40' => 'hqx',
      'text/html' => 'htm',
      'text/html' => 'html',
      'x-conference/x-cooltalk' => 'ice',
      'image/x-icon' => 'ico',
      'text/calendar' => 'ics',
      'image/ief' => 'ief',
      'text/calendar' => 'ifb',
      'model/iges' => 'iges',
      'model/iges' => 'igs',
      'application/x-java-jnlp-file' => 'jnlp',
      'image/jp2' => 'jp2',
      'image/jpeg' => 'jpe',
      'image/jpeg' => 'jpeg',
      'image/jpeg' => 'jpg',
      'application/x-javascript' => 'js',
      'audio/midi' => 'kar',
      'application/x-latex' => 'latex',
      'application/octet-stream' => 'lha',
      'application/octet-stream' => 'lzh',
      'audio/x-mpegurl' => 'm3u',
      'audio/mp4a-latm' => 'm4a',
      'audio/mp4a-latm' => 'm4b',
      'audio/mp4a-latm' => 'm4p',
      'video/vnd.mpegurl' => 'm4u',
      'video/x-m4v' => 'm4v',
      'image/x-macpaint' => 'mac',
      'application/x-troff-man' => 'man',
      'application/mathml+xml' => 'mathml',
      'application/x-troff-me' => 'me',
      'model/mesh' => 'mesh',
      'audio/midi' => 'mid',
      'audio/midi' => 'midi',
      'application/vnd.mif' => 'mif',
      'video/quicktime' => 'mov',
      'video/x-sgi-movie' => 'movie',
      'audio/mpeg' => 'mp2',
      'audio/mpeg' => 'mp3',
      'video/mp4' => 'mp4',
      'video/mpeg' => 'mpe',
      'video/mpeg' => 'mpeg',
      'video/mpeg' => 'mpg',
      'audio/mpeg' => 'mpga',
      'application/x-troff-ms' => 'ms',
      'model/mesh' => 'msh',
      'video/vnd.mpegurl' => 'mxu',
      'application/x-netcdf' => 'nc',
      'application/oda' => 'oda',
      'application/ogg' => 'ogg',
      'image/x-portable-bitmap' => 'pbm',
      'image/pict' => 'pct',
      'chemical/x-pdb' => 'pdb',
      'application/pdf' => 'pdf',
      'image/x-portable-graymap' => 'pgm',
      'application/x-chess-pgn' => 'pgn',
      'image/pict' => 'pic',
      'image/pict' => 'pict',
      'image/png' => 'png',
      'image/x-portable-anymap' => 'pnm',
      'image/x-macpaint' => 'pnt',
      'image/x-macpaint' => 'pntg',
      'image/x-portable-pixmap' => 'ppm',
      'application/vnd.ms-powerpoint' => 'ppt',
      'application/postscript' => 'ps',
      'video/quicktime' => 'qt',
      'image/x-quicktime' => 'qti',
      'image/x-quicktime' => 'qtif',
      'audio/x-pn-realaudio' => 'ra',
      'audio/x-pn-realaudio' => 'ram',
      'image/x-cmu-raster' => 'ras',
      'application/rdf+xml' => 'rdf',
      'image/x-rgb' => 'rgb',
      'application/vnd.rn-realmedia' => 'rm',
      'application/x-troff' => 'roff',
      'text/rtf' => 'rtf',
      'text/richtext' => 'rtx',
      'text/sgml' => 'sgm',
      'text/sgml' => 'sgml',
      'application/x-sh' => 'sh',
      'application/x-shar' => 'shar',
      'model/mesh' => 'silo',
      'application/x-stuffit' => 'sit',
      'application/x-koan' => 'skd',
      'application/x-koan' => 'skm',
      'application/x-koan' => 'skp',
      'application/x-koan' => 'skt',
      'application/smil' => 'smi',
      'application/smil' => 'smil',
      'audio/basic' => 'snd',
      'application/octet-stream' => 'so',
      'application/x-futuresplash' => 'spl',
      'application/x-wais-source' => 'src',
      'application/x-sv4cpio' => 'sv4cpio',
      'application/x-sv4crc' => 'sv4crc',
      'image/svg+xml' => 'svg',
      'application/x-shockwave-flash' => 'swf',
      'application/x-troff' => 't',
      'application/x-tar' => 'tar',
      'application/x-tcl' => 'tcl',
      'application/x-tex' => 'tex',
      'application/x-texinfo' => 'texi',
      'application/x-texinfo' => 'texinfo',
      'image/tiff' => 'tif',
      'image/tiff' => 'tiff',
      'application/x-troff' => 'tr',
      'text/tab-separated-values' => 'tsv',
      'text/plain' => 'txt',
      'application/x-ustar' => 'ustar',
      'application/x-cdlink' => 'vcd',
      'model/vrml' => 'vrml',
      'application/voicexml+xml' => 'vxml',
      'audio/x-wav' => 'wav',
      'image/vnd.wap.wbmp' => 'wbmp',
      'application/vnd.wap.wbxml' => 'wbmxl',
      'text/vnd.wap.wml' => 'wml',
      'application/vnd.wap.wmlc' => 'wmlc',
      'text/vnd.wap.wmlscript' => 'wmls',
      'application/vnd.wap.wmlscriptc' => 'wmlsc',
      'model/vrml' => 'wrl',
      'image/x-xbitmap' => 'xbm',
      'application/xhtml+xml' => 'xht',
      'application/xhtml+xml' => 'xhtml',
      'application/vnd.ms-excel' => 'xls',
      'application/xml' => 'xml',
      'image/x-xpixmap' => 'xpm',
      'application/xml' => 'xsl',
      'application/xslt+xml' => 'xslt',
      'application/vnd.mozilla.xul+xml' => 'xul',
      'image/x-xwindowdump' => 'xwd',
      'chemical/x-xyz' => 'xyz',
      'application/zip' => 'zip',
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' => 'xls',
      'application/vnd.openxmlformats-officedocument.spreadsheetml.template' => 'xlt',
      'application/vnd.openxmlformats-officedocument.presentationml.template' => 'pot',
      'application/vnd.openxmlformats-officedocument.presentationml.slideshow' => 'pps',
      'application/vnd.openxmlformats-officedocument.presentationml.presentation' => 'ppt',
      'application/vnd.openxmlformats-officedocument.presentationml.slide' => 'sld',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document' => 'doc',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.template' => 'dot',
      'application/vnd.ms-excel.addin.macroEnabled.12' => 'xls',
      'application/vnd.ms-excel.sheet.binary.macroEnabled.12' => 'xls'
    }
    if defined?(icons[filetype]) then  return 'file_extension_'+icons[filetype]+'.png' end
  end

  def file_size(size)
    size = size.to_f
    filesize = case size
               when 1000000000..1000000000000000 then (size/1000000000).round(2).to_s+" GB"
               when 1000000..1000000000 then (size/1000000).round(2).to_s+" MB"
               when 1000..1000000 then (size/1000).round(2).to_s+' KB'
               when 0..1000 then size.to_s+' B'
               end
    return filesize
  end
end
