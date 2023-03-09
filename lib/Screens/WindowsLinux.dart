import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WindowLinux extends StatefulWidget {
  final String value;

  const WindowLinux({Key? key,required this.value}) : super(key: key);

  @override
  State<WindowLinux> createState() => _WindowLinuxState();
}

class _WindowLinuxState extends State<WindowLinux> {

  List<String> shortcuts_general =
  [
    "Ctrl + Shift + Space",
    "Double Shift",
    "Alt + Enter",
    "Alt + Ins",
    "Ctrl + P",
    "Ctrl + W",
    "Ctrl + Shift + W",
    "Ctrl + E",
   "Shift + F6",
    "Alt + #[0-9]",
    "Ctrl + S",
    "Ctrl + Alt + Y",
    "Ctrl + Shift + F12",
    "Alt + Shift + I",
    "Ctrl + BackQuote (`)",
    "Ctrl + Alt + S",
    "Ctrl + Alt + Shift + S",
    "Ctrl + Shift + A",
  ];

  List<String> shortcuts_debugging =
  [
    "F8 / F7",
    "Shift + F7 / Shift + F8",
    "Alt + F9",
    "Alt + F8",
    "F9",
    "Ctrl + F8",
    "Ctrl + Shift + F8",
  ];

  List<String> shortcuts_search_replace =
  [
    "Double Shift",
    "Ctrl + F",
    "F3 / Shift + F3",
    "Ctrl + R",
    "Ctrl + Shift + F",
    "Ctrl + Shift + R",
    "Alt + J",
    "Ctrl + Alt + Shift + J",
    "Alt + Shift + J"
  ];


  List<String> shortcuts_editing =
  [
    "Ctrl + Space",
    "Ctrl + Shift + Space",
    "Ctrl + Shift + Enter",
    "Ctrl + P",
    "Ctrl + Q",
    "Shift + F1",
    "Ctrl + mouse",
    "Ctrl + F1",
    "Alt + Insert",
    "Ctrl + O",
    "Ctrl + I",
    "Ctrl + Alt + T",
    "Ctrl + /",
    "Ctrl + Shift + /",
    "Ctrl + W",
    "Ctrl + Shift + W",
    "Alt + Q",
    "Alt + Enter",
    "Ctrl + Alt + L",
    "Ctrl + Alt + O",
    "Ctrl + Alt + I",
    "Tab / Shift + Tab",
    "Ctrl + X, Shift + Delete",
    "Ctrl + C , Ctrl + Insert",
    "Ctrl + V, Shift + Insert",
    "Ctrl + Shift + V",
    "Ctrl + D",
    "Ctrl + Y",
    "Ctrl + Shift + J",
    "Ctrl + Enter",
    "Shift + Enter",
    "Ctrl + Shift + U",
    "Ctrl + Shift + ] / [",
    "Ctrl + Delete",
    "Ctrl + Backspace",
    "Ctrl + NumPad+ / -",
    "Ctrl + Shift + NumPad+",
    "Ctrl + Shift + NumPad-",
    "Ctrl + F4",
  ];

  List<String> shortcuts_refactoring =
  [
    "F5",
    "F6",
    "Alt + Delete",
    "Shift + F6",
    "Shift + F6",
    "Shift + F6",
    "Ctrl + Alt + N",
    "Ctrl + Alt + M",
    "Ctrl + Alt + V",
    "Ctrl + Alt + F",
    "Ctrl + Alt + C",
    "Ctrl + Alt + P",
  ];

  List<String> shortcuts_navigation =
  [
    "Ctrl + N",
    "Ctrl + Shift + N",
    "Ctrl + Alt + Shift + N",
    "Alt + Right / Left",
    "F12",
    "Esc",
    "Shift + Esc",
    "Ctrl + G",
    "Ctrl + E",
    "Ctrl + Shift + E",
    "Ctrl + Alt + Left / Right",
    "Ctrl + Shift + Backspace",
    "Alt + F1",
    "Ctrl + B, Ctrl + Click",
    "Ctrl + Alt + B",
    "Ctrl + Shift + I",
    "Ctrl + Shift + B",
    "Ctrl + U",
    "Alt + Up / Down",
    "Ctrl + ] / [",
    "Ctrl + F12",
    "Ctrl + H",
    "Ctrl + Shift + H",
    "Ctrl + Alt + H",
    "F2 / Shift + F2",
    "F4 / Ctrl + Enter",
    "Alt + Home",
    "F11",
    "Ctrl + F11",
    "Ctrl + #[0-9]",
    "Shift + F11",
  ];

  List<String> shortcuts_compile_run =
  [
   "Ctrl + F9",
    "Ctrl + Shift + F9",
    "Alt + Shift + F10 / F9",
    "Shift + F10 / F9",
    "Ctrl + Shift + F10",
    "Double Ctrl"
  ];

  List<String> shortcuts_others =
  [
    "Alt + F7 / Ctrl + F7",
    "Ctrl + Shift + F7",
    "Ctrl + Alt + F7",
    "Ctrl + K",
    "Ctrl + T",
    "Ctrl + Shift + K",
    "Alt + BackQuote (`)",
    "Ctrl + Alt + J",
    "Ctrl + J",
  ];

  List<String> shortcutsTitleGeneral =
  ["Smart code completion",
    "Search everywhere",
    "Show intention actions & quick-fixes",
    "Generate code",
    "Parameter info",
    "Extend selection",
    "Shrink selection",
    "Recent files popup",
    "Rename",
    "Open corresponding tool window",
    "Save all",
    "Synchronize",
    "Toggle maximizing editor",
    "Inspect current file with current profile",
    "Quick switch current scheme",
    "Open Settings dialog",
    "Open Project Structure dialog",
    "Find Action"

  ];

  List<String> shortcutsTitleDebugging =
  ["Step over / into",
    "Smart step into / Step out",
    "Run to cursor",
    "Evaluate expression",
    "Resume program",
    "Toggle breakpoint",
    "View breakpoints",

  ];

  List<String> shortcutsTitleSearchReplace =
  ["Search everywhere",
    "Find",
    "Find next / previous",
    "Replace",
    "Find in path",
    "Replace in path",
    "Select next occurrence",
    "Select all occurrences",
    "Unselect occurrence"
  ];

  List<String> shortcutsTitleEditing =
  [
    "Basic code completion",
    "Smart code completion",
    "Complete statement",
    "Parameter info",
    "Quick documentation lookup",
    "External Doc",
    "Brief Info",
    "Show descriptions of error at caret",
    "Generate code...",
    "Override methods",
    "Implement methods",
    "Surround with...",
    "Comment / uncomment with line comment",
    "Comment / uncomment with block comment",
    "Extend selection",
    "Shrink selection",
    "Context info",
    "Show intention actions and quick-fixes",
    "Reformat code",
    "Reformat code",
    "Auto-indent line(s)",
    "Indent / un-indent selected lines",
    "Cut current line to clipboard",
    "Copy current line to clipboard",
    "Paste from clipboard",
    "Paste from recent buffers...",
    "Duplicate current line",
    "Delete line at caret",
    "Smart line join",
    "Smart line split",
    "Start new line",
    "Toggle case for word at caret or selected block",
    "Select till code block end/start",
    "Delete to word end",
    "Delete to word start",
    "Expand / collapse code block",
    "Expand all",
    "Collapse all",
    "Close active editor tab"
  ];

  List<String> shortcutsTitleRefactoring =
  [
   "Copy",
    "Move",
    "Safe Delete",
    "Rename",
    "Refactor this",
    "Change Signature",
    "Inline",
    "Extract Method",
    "Extract Variable",
    "Extract Field",
    "Extract Constant",
    "Extract Parameter",

  ];

  List<String> shortcutsTitleNavigation =
  [
    "Go to class",
    "Go to class",
    "Go to symbol",
    "Go to next / previous editor tab",
    "Go back to previous tool window",
    "Go to editor (from tool window)",
    "Hide active or last active window",
    "Go to line",
    "Recent files popup",
    "Recent locations popup",
    "Navigate back / forward",
    "Navigate to last edit location",
    "Select current file or symbol in any view",
    "Go to declaration",
    "Go to implementation(s)",
    "Open quick definition lookup",
    "Go to type declaration",
    "Go to super-method / super-class",
    "Go to previous / next method",
    "Move to code block end / start",
    "File structure popup",
    "Type hierarchy",
    "Method hierarchy",
    "Call hierarchy",
    "Next / Previous highlighted error",
    "Edit source / View source",
    "Show navigation bar",
    "Toggle bookmark",
    "Toggle bookmark with mnemonic",
    "Go to numbered bookmark",
    "Show bookmarks",

  ];


  List<String> shortcutsCompileRun =
  [
    "Build project",
    "Compile selected file, package or module",
    "Select configuration and run / debug",
    "Run / Debug",
    "Run context configuration from editor",
    "Run anything",
  ];

  List<String> shortcutsOthers =
  [
    "Find usages / Find usages in file",
    "Highlight usages in file",
    "Show usages",
    "Commit project to VCS",
    "Update project from VCS",
    "Push commits",
    "‘VCS’ quick popup",
    "Surround with Live Template",
    "Insert Live Template"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.value), centerTitle: true,
      ),
      body: _checkShortcuts(),
    );
  }

  Widget _checkShortcuts() {
    if(widget.value == "General") {
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_general.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_general[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleGeneral[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Debugging"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_debugging.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_debugging[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleDebugging[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Search & Replace"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_search_replace.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_search_replace[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleSearchReplace[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Editing"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_editing.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_editing[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleEditing[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Refactoring"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_refactoring.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_refactoring[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleRefactoring[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Refactoring"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_refactoring.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_refactoring[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleRefactoring[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Navigation"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_navigation.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_navigation[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsTitleNavigation[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Compile & Run"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_compile_run.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_compile_run[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsCompileRun[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }
    else if(widget.value == "Others"){
      return Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: shortcuts_others.length,
          itemBuilder: (ctx, i) {
            return Card(
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child:
                          Center(child: Text(shortcuts_others[i],style: TextStyle(fontSize: 27,color: Colors.black))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Center(child: Text(shortcutsOthers[i],style: TextStyle(fontSize: 18,color: Colors.black54))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.0,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 100,
          ),
        ),
      );
    }

    else{
      return const Center(
        child: Text("No shortcuts"),
      );
    }

  }
}
