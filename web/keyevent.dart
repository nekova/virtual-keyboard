import 'dart:html';

class Keyboard {
  final Map keys = {8: 'delete', 9: 'tab', 13: 'enter',16: 'shiftl', 17: 'ctrl', 18: 'opt', 20: 'capslock', 27: 'esc', 32: 'space', 37: '←', 38: '↑', 39: '→', 40: '↓',48: 'zero', 49: 'one', 50: 'two', 51: 'three', 52: 'four', 53: 'five', 54: 'six', 55: 'seven', 56: 'eight', 57: 'nine', 65: 'a', 66: 'b', 67: 'c', 68: 'd', 69: 'e', 70: 'f', 71: 'g', 72: 'h', 73: 'i', 74: 'j', 75: 'k', 76: 'l', 77: 'm', 78: 'n', 79: 'o', 80: 'p', 81: 'q', 82: 'r', 83: 's', 84: 't', 85: 'u', 86: 'v', 87: 'w', 88: 'x', 89: 'y', 90: 'z', 91: 'cmdl', 93: 'cmdr',186: 'colon', 187: 'equal', 188: 'comma', 189: 'dash', 190: 'period', 191: 'slash', 192: 'apostrophe', 219: 'boxbrackets-f', 220: 'backslash', 221: 'boxbrackets-b', 222: 'quotation' };

  Keyboard() {
    document.body.onKeyDown.listen((KeyboardEvent e) {
      document.querySelector('#${keys[e.keyCode]}').classes.add('keydown');
    });
    document.body.onKeyUp.listen((KeyboardEvent e) {
      if (document.querySelector('#${keys[e.keyCode]}') != null) {
        document.querySelector('#${keys[e.keyCode]}').classes.remove('keydown');
      };
    });
  }  
}

main() {
  var keyboard = new Keyboard();
}