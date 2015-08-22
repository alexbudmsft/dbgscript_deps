# This file was created by mkconfig.rb when ruby was built.  Any
# changes made to this file will be lost the next time ruby is built.

module RbConfig
  RUBY_VERSION.start_with?("2.3.") or
    raise "ruby lib version (2.3.0) doesn't match executable version (#{RUBY_VERSION})"

  TOPDIR = File.dirname(__FILE__).chomp!("/lib/ruby/2.3.0/x64-mswin64_120")
  DESTDIR = TOPDIR && TOPDIR[/\A[a-z]:/i] || '' unless defined? DESTDIR
  CONFIG = {}
  CONFIG["DESTDIR"] = DESTDIR
  CONFIG["MAJOR"] = "2"
  CONFIG["MINOR"] = "3"
  CONFIG["TEENY"] = "0"
  CONFIG["PATCHLEVEL"] = "-1"
  CONFIG["prefix"] = (TOPDIR || DESTDIR + "E:/ruby_dev")
  CONFIG["EXEEXT"] = ".exe"
  CONFIG["ruby_install_name"] = "ruby"
  CONFIG["RUBY_INSTALL_NAME"] = "ruby"
  CONFIG["RUBY_SO_NAME"] = "x64-msvcr120-ruby230_d"
  CONFIG["SHELL"] = "$(COMSPEC)"
  CONFIG["BUILD_FILE_SEPARATOR"] = "\\"
  CONFIG["PATH_SEPARATOR"] = ";"
  CONFIG["CFLAGS"] = "-MDd -Z7 -W2 -wd4996 -we4028 -we4142 -WX -Od  -Zm600"
  CONFIG["WERRORFLAG"] = "-WX"
  CONFIG["DEFS"] = ""
  CONFIG["CPPFLAGS"] = " -D_WIN32_WINNT=0x0600  "
  CONFIG["CXXFLAGS"] = "-MDd -Z7 -W2 -wd4996 -we4028 -we4142 -WX -Od  -Zm600"
  CONFIG["FFLAGS"] = ""
  CONFIG["LDFLAGS"] = "-incremental:no -debug -opt:ref -opt:icf"
  CONFIG["LIBS"] = "user32.lib advapi32.lib shell32.lib ws2_32.lib ole32.lib oleaut32.lib iphlpapi.lib imagehlp.lib shlwapi.lib"
  CONFIG["exec_prefix"] = "$(prefix)"
  CONFIG["program_transform_name"] = "s,.*,&,"
  CONFIG["bindir"] = "$(exec_prefix)/bin"
  CONFIG["sbindir"] = "$(exec_prefix)/sbin"
  CONFIG["libexecdir"] = "$(exec_prefix)/libexec"
  CONFIG["datadir"] = "$(prefix)/share"
  CONFIG["sysconfdir"] = "$(prefix)/etc"
  CONFIG["sharedstatedir"] = "/etc"
  CONFIG["localstatedir"] = "/var"
  CONFIG["libdir"] = "$(exec_prefix)/lib"
  CONFIG["includedir"] = "$(prefix)/include"
  CONFIG["oldincludedir"] = "/usr/include"
  CONFIG["infodir"] = "$(datadir)/info"
  CONFIG["mandir"] = "$(datadir)/man"
  CONFIG["ridir"] = "$(datadir)/ri"
  CONFIG["docdir"] = "$(datadir)/doc/$(RUBY_BASE_NAME)"
  CONFIG["build"] = "x64-pc-mswin64_120"
  CONFIG["build_alias"] = "x64-mswin64_120"
  CONFIG["build_cpu"] = "x64"
  CONFIG["build_vendor"] = "pc"
  CONFIG["build_os"] = "mswin64_120"
  CONFIG["host"] = "x64-pc-mswin64_120"
  CONFIG["host_alias"] = "x64-mswin64_120"
  CONFIG["host_cpu"] = "x64"
  CONFIG["host_vendor"] = "pc"
  CONFIG["host_os"] = "mswin64_120"
  CONFIG["target"] = "x64-pc-mswin64_120"
  CONFIG["target_alias"] = "x64-mswin64_120"
  CONFIG["target_cpu"] = "x64"
  CONFIG["target_vendor"] = "pc"
  CONFIG["target_os"] = "mswin64_120"
  CONFIG["NULLCMD"] = ":"
  CONFIG["CC"] = "cl -nologo"
  CONFIG["CPP"] = "cl -nologo -E"
  CONFIG["CXX"] = "$(CC)"
  CONFIG["LD"] = "$(CC)"
  CONFIG["YACC"] = "bison"
  CONFIG["RANLIB"] = ""
  CONFIG["AR"] = "lib -nologo"
  CONFIG["ARFLAGS"] = "-machine:x64 -out:"
  CONFIG["LN_S"] = ""
  CONFIG["SET_MAKE"] = "MFLAGS = -$(MAKEFLAGS)"
  CONFIG["RM"] = "$(COMSPEC) /C $(top_srcdir:/=\\)\\win32\\rm.bat"
  CONFIG["RMDIR"] = "$(COMSPEC) /C $(top_srcdir:/=\\)\\win32\\rmdirs.bat"
  CONFIG["RMDIRS"] = "$(COMSPEC) /C $(top_srcdir:/=\\)\\win32\\rmdirs.bat"
  CONFIG["RMALL"] = "$(COMSPEC) /C $(top_srcdir:/=\\)\\win32\\rm.bat -f -r"
  CONFIG["MAKEDIRS"] = "$(COMSPEC) /E:ON /C $(top_srcdir:/=\\)\\win32\\makedirs.bat"
  CONFIG["ALLOCA"] = ""
  CONFIG["DEFAULT_KCODE"] = ""
  CONFIG["EXECUTABLE_EXTS"] = ".exe .com .cmd .bat"
  CONFIG["OBJEXT"] = "obj"
  CONFIG["ASMEXT"] = "asm"
  CONFIG["DLDFLAGS"] = "-incremental:no -debug -opt:ref -opt:icf -dll $(LIBPATH)"
  CONFIG["EXTDLDFLAGS"] = ""
  CONFIG["ARCH_FLAG"] = ""
  CONFIG["STATIC"] = ""
  CONFIG["CCDLFLAGS"] = ""
  CONFIG["LDSHARED"] = "cl -nologo -LD"
  CONFIG["DLEXT"] = "so"
  CONFIG["LIBEXT"] = "lib"
  CONFIG["STRIP"] = ""
  CONFIG["EXTSTATIC"] = "static"
  CONFIG["setup"] = "Setup"
  CONFIG["PREP"] = "miniruby.exe"
  CONFIG["EXTOUT"] = ".ext"
  CONFIG["ARCHFILE"] = ""
  CONFIG["RUBY_BASE_NAME"] = "ruby"
  CONFIG["rubyw_install_name"] = "rubyw"
  CONFIG["RUBYW_INSTALL_NAME"] = "rubyw"
  CONFIG["LIBRUBY_A"] = "$(RUBY_SO_NAME)-static.lib"
  CONFIG["LIBRUBY_SO"] = "$(RUBY_SO_NAME).dll"
  CONFIG["LIBRUBY_ALIASES"] = ""
  CONFIG["LIBRUBY"] = "$(RUBY_SO_NAME).lib"
  CONFIG["LIBRUBYARG"] = "$(LIBRUBYARG_SHARED)"
  CONFIG["LIBRUBYARG_STATIC"] = "$(LIBRUBY_A)"
  CONFIG["LIBRUBYARG_SHARED"] = "$(LIBRUBY)"
  CONFIG["SOLIBS"] = ""
  CONFIG["DLDLIBS"] = ""
  CONFIG["ENABLE_SHARED"] = "yes"
  CONFIG["OUTFLAG"] = "-Fe"
  CONFIG["COUTFLAG"] = "-Fo"
  CONFIG["CPPOUTFILE"] = "-P"
  CONFIG["LIBPATHFLAG"] = " -libpath:%s"
  CONFIG["RPATHFLAG"] = ""
  CONFIG["LIBARG"] = "%s.lib"
  CONFIG["LINK_SO"] = "$(LDSHARED) -Fe$(@) $(OBJS) $(LIBS) $(LOCAL_LIBS) -link $(DLDFLAGS) -implib:$(*F:.so=)-$(arch).lib -pdb:$(*F:.so=)-$(arch).pdb -def:$(DEFFILE)"
  CONFIG["LINK_SO"] << "\n" "@if exist $(@).manifest $(RUBY) -run -e wait_writable -- -n 10 $(@)"
  CONFIG["LINK_SO"] << "\n" "@if exist $(@).manifest mt -nologo -manifest $(@).manifest -outputresource:$(@);2"
  CONFIG["LINK_SO"] << "\n" "@if exist $(@).manifest $(RM) $(@:/=\\).manifest"
  CONFIG["COMPILE_C"] = "$(CC) $(INCFLAGS) $(CFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tc$(<:\\=/)"
  CONFIG["COMPILE_CXX"] = "$(CXX) $(INCFLAGS) $(CXXFLAGS) $(CPPFLAGS) $(COUTFLAG)$(@) -c -Tp$(<:\\=/)"
  CONFIG["ASSEMBLE_C"] = "$(CC) $(CFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tc$(<:\\=/)"
  CONFIG["ASSEMBLE_CXX"] = "$(CXX) $(CXXFLAGS) $(CPPFLAGS) -Fa$(@) -c -Tp$(<:\\=/)"
  CONFIG["COMPILE_RULES"] = "{$(*VPATH*)}.%s.%s: .%s.%s:"
  CONFIG["RULE_SUBST"] = "{.;$(VPATH)}%s"
  CONFIG["TRY_LINK"] = "$(CC) -Feconftest $(INCFLAGS) -I$(hdrdir) $(CPPFLAGS) $(CFLAGS) $(src) $(LOCAL_LIBS) $(LIBS) -link $(LDFLAGS) $(LIBPATH) $(XLDFLAGS)"
  CONFIG["COMMON_LIBS"] = "m"
  CONFIG["COMMON_MACROS"] = "WIN32_LEAN_AND_MEAN WIN32"
  CONFIG["COMMON_HEADERS"] = "winsock2.h ws2tcpip.h windows.h"
  CONFIG["cleanobjs"] = "$*.exp $*.lib $*.pdb"
  CONFIG["DISTCLEANFILES"] = "vc*.pdb"
  CONFIG["EXPORT_PREFIX"] = " "
  CONFIG["archlibdir"] = "$(libdir)/$(arch)"
  CONFIG["sitearchlibdir"] = "$(libdir)/$(sitearch)"
  CONFIG["archincludedir"] = "$(includedir)/$(arch)"
  CONFIG["sitearchincludedir"] = "$(includedir)/$(sitearch)"
  CONFIG["arch"] = "x64-mswin64_120"
  CONFIG["sitearch"] = "x64-msvcr120"
  CONFIG["ruby_version"] = "2.3.0"
  CONFIG["RUBY_PROGRAM_VERSION"] = "2.3.0"
  CONFIG["rubylibprefix"] = "$(prefix)/lib/$(RUBY_BASE_NAME)"
  CONFIG["rubyarchdir"] = "$(rubylibdir)/$(arch)"
  CONFIG["rubylibdir"] = "$(rubylibprefix)/$(ruby_version)"
  CONFIG["sitedir"] = "$(rubylibprefix)/site_ruby"
  CONFIG["sitearchdir"] = "$(sitelibdir)/$(sitearch)"
  CONFIG["sitelibdir"] = "$(sitedir)/$(ruby_version)"
  CONFIG["vendordir"] = "$(rubylibprefix)/vendor_ruby"
  CONFIG["vendorarchdir"] = "$(vendorlibdir)/$(sitearch)"
  CONFIG["vendorlibdir"] = "$(vendordir)/$(ruby_version)"
  CONFIG["rubyhdrdir"] = "$(includedir)/$(RUBY_BASE_NAME)-$(ruby_version)"
  CONFIG["sitehdrdir"] = "$(rubyhdrdir)/site_ruby"
  CONFIG["vendorhdrdir"] = "$(rubyhdrdir)/vendor_ruby"
  CONFIG["rubyarchhdrdir"] = "$(rubyhdrdir)/$(arch)"
  CONFIG["sitearchhdrdir"] = "$(sitehdrdir)/$(sitearch)"
  CONFIG["vendorarchhdrdir"] = "$(vendorhdrdir)/$(sitearch)"
  CONFIG["PLATFORM_DIR"] = "win32"
  CONFIG["THREAD_MODEL"] = "win32"
  CONFIG["configure_args"] = "--with-make-prog=nmake --enable-shared --prefix=E:\\ruby_dev --with-baseruby=E:\\Ruby22-x64\\bin\\ruby.exe --disable-install-doc --embed-debug --debug --with-static-linked-ext"
  CONFIG["try_header"] = "try_compile"
  CONFIG["ruby_pc"] = "ruby-2.3.pc"
  CONFIG["archdir"] = "$(rubyarchdir)"
  CONFIG["topdir"] = File.dirname(__FILE__)
  MAKEFILE_CONFIG = {}
  CONFIG.each{|k,v| MAKEFILE_CONFIG[k] = v.dup}
  def RbConfig::expand(val, config = CONFIG)
    newval = val.gsub(/\$\$|\$\(([^()]+)\)|\$\{([^{}]+)\}/) {
      var = $&
      if !(v = $1 || $2)
	'$'
      elsif key = config[v = v[/\A[^:]+(?=(?::(.*?)=(.*))?\z)/]]
	pat, sub = $1, $2
	config[v] = false
	config[v] = RbConfig::expand(key, config)
	key = key.gsub(/#{Regexp.quote(pat)}(?=\s|\z)/n) {sub} if pat
	key
      else
	var
      end
    }
    val.replace(newval) unless newval == val
    val
  end
  CONFIG.each_value do |val|
    RbConfig::expand(val)
  end

  # returns the absolute pathname of the ruby command.
  def RbConfig.ruby
    File.join(
      RbConfig::CONFIG["bindir"],
      RbConfig::CONFIG["ruby_install_name"] + RbConfig::CONFIG["EXEEXT"]
    )
  end
end
CROSS_COMPILING = nil unless defined? CROSS_COMPILING
