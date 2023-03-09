import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mac extends StatefulWidget {
  final String value;

  const Mac({Key? key,required this.value}) : super(key: key);

  @override
  State<Mac> createState() => _MacState();
}

class _MacState extends State<Mac> {

  List<String> shortcuts_general =
  [
    "Control + Shift + Space",
    "Double Shift",
    "Option + Enter",
    "Command + N, Control + Enter",
    "Command + P",
    "Option + Up",
    "Option + Down",
    "Command + E",
    "Shift + F6",
    "Command + [0-9]",
    "Command + S",
    "Command + Option + Y",
    "Command + Shift + F12",
    "Option + Shift + I",
    "Command + BackQuote (`)",
    "Command + ,",
    "Command + ;",
    "Command + Shift + A",
  ];

  List<String> shortcuts_debugging =
  [
    "F8 / F7",
    "Shift + F7 / Shift + F8",
    "Option + F9",
    "Option + F8",
    "Command + Option + R",
    "Command + F8",
    "Command + Shift + F8",
  ];

  List<String> shortcuts_search_replace =
  [
    "Double Shift",
    "Command + F",
    "Command + G / Command + Shift + F3",
    "Command + R",
    "Command + Shift + F",
    "Command + Shift + R",
    "Control + G",
    "Control + Command + G",
    "Control + G"
  ];


  List<String> shortcuts_editing =
  [
    "Control + Space",
    "Control + Shift + Space",
    "Command + Shift + Enter",
    "Command + P",
    "Command + J, F1",
    "Shift + F1",
    "Command + mouse",
    "Command + F1",
    "Command + N, Control + Enter",
    "Control + O",
    "Control + I",
    "Command + Option + T",
    "Command + /",
    "Command + Option + /",
    "Option + Up",
    "Option + Down",
    "Control + Shift + Q",
    "Option + Enter",
    "Command + Option + L",
    "Control + Option + O",
    "Control + Option + I",
    "Tab / Shift + Tab",
    "Command + X",
    "Command + C ",
    "Command + V",
    "Command + Shift + V",
    "Command + D",
    "Command + Delete",
    "Control + Shift + J",
    "Command + Enter",
    "Shift + Enter",
    "Command + Shift + U",
    "Command + Option + Shift",
    "Option + Delete",
    "Option + Delete",
    "Command + /  Command - ",
    "Command + Shift + ",
    "Command + Shift - ",
    "Command + W",
  ];

  List<String> shortcuts_refactoring =
  [
    "F5",
    "F6",
    "Command + Delete",
    "Shift + F6",
    "Control + T",
    "Command + F6",
    "Command + Option + N",
    "Command + Option + M",
    "Command + Option + V",
    "Command + Option + F",
    "Command + Option + C",
    "Command + Option + P",
  ];

  List<String> shortcuts_navigation =
  [
    "Command + O",
    "Command + Shift + O",
    "Command + Option + O",
    "Control + Left, Control + Right ",
    "F12",
    "Esc",
    "Shift + Esc",
    "Command + L",
    "Command + E",
    "Command + Shift + E",
    "Command + Option + Left / Right",
    "Command + Shift + Backspace",
    "Option + F1",
    "Command + B, Command + Click",
    "Command + Option + B",
    "Option + Space, Command + Y",
    "Control + Shift + B",
    "Command + U",
    "Option + Up / Down",
    "Command + Option [ / Command + Option ] ",
    "Command + F12",
    "Control + H",
    "Command + Shift + H",
    "Control + Option + H",
    "F2 / Shift + F2",
    "F4 / Command  + Down",
    "Option + Home",
    "F3",
    "Option + F3",
    "Control + 0 .. control + 9 ",
    "Command + F3",
  ];

  List<String> shortcuts_compile_run =
  [
    "Command + F9",
    "Command + Shift + F9",
    "Control + Option + R / D",
    "Control + R / D",
    "Control + Shift + R, Control + Shift + D",
    "Double Control"
  ];

  List<String> shortcuts_others =
  [
    "Option + F7 / Option + F7",
    "Command + Shift + F7",
    "Command + Alt + F7",
    "Command + K",
    "Command + T",
    "Command + Shift + K",
    "Option + V",
    "Command + Option + J",
    "Command + J",
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
                          padding: const EdgeInsets.only(top:1),
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
