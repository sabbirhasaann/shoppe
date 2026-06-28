import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*constants */
import 'package:shoppe/core/constants/app_text_styles.dart';
import 'package:shoppe/core/theme/app_color_palette.dart';

class AppTextFormField extends StatelessWidget {
  final String? suffixAsset;
  // ==========================================
  // Core & Infrastructure State
  // ==========================================

  // Groups multiple split fields into a single semantic unit for OS autofill/shortcuts.
  final Object groupId;

  // Manages reading, clearing, and programmatic modification of input text.
  final TextEditingController? controller;

  // Sets the starting text value when a controller is not explicitly provided.
  final String? initialValue;

  // Controls and listens to keyboard focus states for this specific field.
  final FocusNode? focusNode;

  // Restores the user's typed string if the OS kills the app in the background.
  final String? restorationId;

  // Tracks and broadcasts interactive states like hover, focus, and error.
  final WidgetStatesController? statesController;

  // ==========================================
  // Styling & Visual Presentation
  // ==========================================

  // Defines the input visual borders, icons, hints, labels, and error text themes.
  // final InputDecoration? decoration;

  //------------------------------
  //Input Decoration Class Started
  //------------------------------

  // An icon that appears outside the main input field container, positioned at the start.
  final Widget? icon;

  // The color applied strictly to the prefix icon displayed outside the field.
  final Color? iconColor;

  // An optional custom widget to display as an animated label instead of raw string text.
  //
  final Widget? label;

  // The simple string text used for the field's placeholder description or floating title.
  final String? labelText;

  // The text style configurations applied to the label text when it rests inside the field.
  final TextStyle? labelStyle;

  // The text style specifications applied to the label text when it floats up to the border.
  final TextStyle? floatingLabelStyle;

  // An optional custom widget to display persistent helper info below the input box area.
  final Widget? helper;

  // A descriptive inline text string positioned underneath the field text container.
  final String? helperText;

  // The style rules applied to customize the look of the helper description beneath the field.
  final TextStyle? helperStyle;

  // Sets the maximum line breaks allowed for rendering the helper info layout safely.
  final int? helperMaxLines;

  // A template descriptive text string shown inside the field before the user begins typing.
  final String? hintText;

  // An optional custom widget to render inside the field as a placeholder instead of string text.
  final Widget? hint;

  // The font style layout specifications applied to the hint text placeholder.
  final TextStyle? hintStyle;

  // Forces the directionality of the placeholder hint text (LTR or RTL).
  final TextDirection? hintTextDirection;

  // The total row vertical limit the hint text is permitted to span before truncation.
  final int? hintMaxLines;

  // The animation time duration it takes for the placeholder text to fade when typing begins.
  final Duration? hintFadeDuration;

  // Dictates whether layout height remains reserved for hints when content text is present.
  final bool maintainHintHeight;

  // Dictates whether layout sizing dimensions are reserved for hints when content text is present.
  final bool maintainHintSize;

  // Keeps field space reserved for the floating label even when it is not currently visible.
  final bool maintainLabelSize;

  // A completely custom error display widget to show beneath the field boundary box.
  final Widget? error;

  // The text string displayed underneath the input box when form validation checks fail.
  final String? errorText;

  // Typography guidelines applied to color, size, and layout properties of the error message text.
  final TextStyle? errorStyle;

  // The vertical row limit the validation text block can consume before clipping.
  final int? errorMaxLines;

  // Determines whether the label stays inside, floats up on focus, or never shifts upward.
  final FloatingLabelBehavior? floatingLabelBehavior;

  // Configures the horizontal orientation alignment of the floating label along the top border line.
  final FloatingLabelAlignment? floatingLabelAlignment;

  // Minimizes the internal height wrapper padding parameters to form a tight, narrow box.
  final bool? isCollapsed;

  // Compresses the text container vertically to optimize layout spaces across busy UI forms.
  final bool? isDense;

  // Customizes inner spacing margins between the input text content and decoration borders.
  final EdgeInsetsGeometry? contentPadding;

  // An interactive widget embedded directly inside the start of the visible text field layout box.
  final Widget? prefixIcon;

  // Sets width and height boundary rule thresholds around the inner starting decoration icon container.
  final BoxConstraints? prefixIconConstraints;

  // A persistent custom widget placed instantly ahead of the typing area inside the field container.
  final Widget? prefix;

  // Static string text anchored permanently in front of user content (e.g., currency symbols).
  final String? prefixText;

  // Style attributes configured specifically to format the leading static prefix text segment.
  final TextStyle? prefixStyle;

  // The specific color tint overlay applied exclusively to the inline starting icon widget.
  final Color? prefixIconColor;

  // An interactive widget embedded directly inside the trailing end of the text container frame.
  final Widget? suffixIcon;

  // A persistent custom widget placed permanently at the terminal end of the text typing line.
  final Widget? suffix;

  // Static string text anchored permanently behind the active user input (e.g., suffix weights).
  final String? suffixText;

  // Text style configurations applied to paint the trailing static suffix string text.
  final TextStyle? suffixStyle;

  // The specific color tint overlay applied exclusively to the inline trailing icon widget.
  final Color? suffixIconColor;

  // Sets dimensional sizing boundary constraints around the trailing terminal decoration icon box.
  final BoxConstraints? suffixIconConstraints;

  // A custom trailing character count or status tracker widget loaded underneath the border.
  final Widget? counter;

  // Static string text manually overriding automated field count systems beneath the layout.
  final String? counterText;

  // Style criteria utilized to alter text presentation properties of character limits counters.
  final TextStyle? counterStyle;

  // Toggles background color paint layers on or off behind the input text area.
  final bool? filled;

  // The specific color painted across the interior background region when filled is true.
  final Color? fillColor;

  // The background overlay highlight tone presented when mice hover frames over the field.
  final Color? focusColor;

  // The background tracking tint cast behind fields when an active computer cursor hovers adjacent.
  final Color? hoverColor;

  // The boundary line format rendered when validation errors occur while focus remains absent.
  final InputBorder? errorBorder;

  // The active border design display shown when a user interacts inside a valid field box.
  final InputBorder? focusedBorder;

  // The active highlight border configuration painted when fields focus while containing validation errors.
  final InputBorder? focusedErrorBorder;

  // The border look deployed when user interactions are locked via disabled states.
  final InputBorder? disabledBorder;

  // The standard baseline outer frame border rendered when fields sit active but unselected.
  final InputBorder? enabledBorder;

  // The catch-all default baseline border type applied if individual border instances are left unconfigured.
  final InputBorder? border;

  // Configures default interaction rules to declare if decoration presentation formats utilize active styling.
  // final bool enabled = true;

  //----------------------------
  //Input Decoration Class Ended
  //----------------------------

  // Sets the font weight, size, color, and typography of the active user text.
  final TextStyle? style;

  // Forces baseline layout metrics to guarantee uniform line height heights.
  final StrutStyle? strutStyle;

  // Sets reading layouts to flow Left-to-Right (LTR) or Right-to-Left (RTL).
  final TextDirection? textDirection;

  // Sets the horizontal layout alignment (left, center, right) of the inner text.
  final TextAlign textAlign;

  // Dictates the vertical alignment (top, center, bottom) of the text within its box.
  final TextAlignVertical? textAlignVertical;

  // Defines how text overflowing the container boundaries is clipped or rendered.
  final Clip clipBehavior;

  // ==========================================
  // Interaction & Focus Behavior
  // ==========================================

  // Shifts focus and displays the keyboard immediately when the screen initializes.
  final bool autofocus;

  // Locks text editing while keeping tap handlers, selection, and copying fully active.
  final bool readOnly;

  // Toggles whether the field can be focused, tapped, or interacted with at all.
  final bool? enabled;

  // Makes hit-testing gestures ignore this widget entirely and pass to widgets behind.
  final bool? ignorePointers;

  // Determines whether this field is allowed to receive keyboard focus on click or tab.
  final bool canRequestFocus;

  // Sets the shape of the mouse pointer when hovering over the field on Desktop/Web.
  final MouseCursor? mouseCursor;

  // ==========================================
  // Input Typing Control & Constraints
  // ==========================================

  // Adjusts the native software keyboard layout (e.g., number pad, email address layout).
  final TextInputType? keyboardType;

  // Configures automatic word, sentence, or character upper-casing logic.
  final TextCapitalization textCapitalization;

  // Changes the bottom-right keyboard action button (e.g., Done, Next, Search).
  final TextInputAction? textInputAction;

  // Intercepts keystrokes in real time to apply rules or formatting masks.
  final List<TextInputFormatter>? inputFormatters;

  // Defines the maximum height threshold or allows dynamic expansion when set to null.
  final int? maxLines;

  // Sets the minimum height rows the field occupies before content forces it taller.
  final int? minLines;

  // Restricts or monitors the maximum character count permitted in this field.
  final int? maxLength;

  // Defines if typing strictly blocks or flags errors at maxLength limits.
  final MaxLengthEnforcement? maxLengthEnforcement;

  // Directs the inner text field to expand and perfectly match its parent widget's height.
  final bool expands;

  // ==========================================
  // Keyboard Smart Features & Security
  // ==========================================

  // Masks typed characters into secret dots for security (e.g., passwords, PIN codes).
  final bool obscureText;

  // Overrides the default security dot mask character with a custom symbol.
  final String obscuringCharacter;

  // Controls the visibility of auto-prediction bands above native mobile keyboards.
  final bool enableSuggestions;

  // Automatically upgrades generic double-dashes into typography curly em-dashes.
  final SmartDashesType? smartDashesType;

  // Automatically converts straight quotation marks into curved typography quotes.
  final SmartQuotesType? smartQuotesType;

  // Directs the keyboard dictionary not to memorize or suggest private words typed here.
  final bool enableIMEPersonalizedLearning;

  // Adjusts native OS red spellcheck squiggly warning highlights.
  final SpellCheckConfiguration? spellCheckConfiguration;

  // Triggers platform credential managers to autofill items like email or passwords.
  final Iterable<String>? autofillHints;

  // ==========================================
  // Gestures & Operational Hooks
  // ==========================================

  // Fires a callback every time a user inserts, deletes, or changes characters.
  final ValueChanged<String>? onChanged;

  // Executes a custom method instantly when the input bounding box is tapped.
  final GestureTapCallback? onTap;

  // Forces the onTap callback to fire even when the field is in a disabled state.
  final bool onTapAlwaysCalled;

  // Fires when the user taps outside this field, perfect for dismissing keyboards.
  final TapRegionCallback? onTapOutside;

  // Executes default keyboard actions when clicking submit before closing focus.
  final VoidCallback? onEditingComplete;

  // Fires a custom callback with the current text string upon pressing keyboard enter/submit.
  final ValueChanged<String>? onFieldSubmitted;

  // Processes special string data sent directly from custom platform input methods.
  final AppPrivateCommandCallback? onAppPrivateCommand;

  // Tunes dragging performance priorities between gesture detection and text selection.
  final DragStartBehavior dragStartBehavior;

  // ==========================================
  // Form Validation & Error Handling
  // ==========================================

  // Tests input text against safety conditions when calling parent Form validation.
  final FormFieldValidator<String>? validator;

  // Configures if validation runs automatically on every keystroke or only explicitly.
  final AutovalidateMode? autovalidateMode;

  // Fires a callback containing final values when a parent Form triggers save operations.
  final FormFieldSetter<String>? onSaved;

  // Overrides manual validation rules to force displaying an error layout from a server.
  final String? forceErrorText;

  // Permits building completely custom error layouts under the field instead of text.
  final FormFieldErrorBuilder? errorBuilder;

  // ==========================================
  // Cursor & Text Selection UI
  // ==========================================

  // Forces visibility rules on the flashing vertical text insertion marker line.
  final bool? showCursor;

  // Customizes the thickness of the text input flashing insertion indicator line.
  final double cursorWidth;

  // Customizes the vertical length dimensions of the flashing text indicator line.
  final double? cursorHeight;

  // Rounds the corners of the blinking vertical text insertion bar.
  final Radius? cursorRadius;

  // Dictates the default theme color of the blinking insertion marker line.
  final Color? cursorColor;

  // Swaps the flashing cursor to an error color theme when validation conditions fail.
  final Color? cursorErrorColor;

  // Enables or disables smooth fade-out blink styling for the active input cursor.
  final bool? cursorOpacityAnimates;

  // Toggles access to copy, paste, cut, and text-highlight drag handles.
  final bool? enableInteractiveSelection;

  // Overrides platform-native text selection handle structures and actions.
  final TextSelectionControls? selectionControls;

  // Defines the box layout style of highlight rectangles wrapping selected text lines.
  final BoxHeightStyle selectionHeightStyle;

  // Controls layout behaviors for horizontal selection background bars.
  final BoxWidthStyle selectionWidthStyle;

  // Configures zoom bubble characteristics during precise text cursor manipulation.
  final TextMagnifierConfiguration? magnifierConfiguration;

  // ==========================================
  // Viewport Scrolling & View Settings
  // ==========================================

  // Creates buffer space around fields to keep them visible when mobile keyboards expand.
  final EdgeInsets scrollPadding;

  // Tweaks scroll physics and friction when navigating large, overflow text contents.
  final ScrollPhysics? scrollPhysics;

  // Directs programmatic scroll viewport movements across tall text paragraphs.
  final ScrollController? scrollController;

  // ==========================================
  // Advanced Extensions & Tooling
  // ==========================================

  // Generates custom status counters underneath text inputs instead of standard numbers.
  final InputCounterWidgetBuilder? buildCounter;

  // Backs up typing logs to support custom undo/redo interactions programmatically.
  final UndoHistoryController? undoController;

  // Sets guidelines for pasting media attachments or rich text straight from keyboards.
  final ContentInsertionConfiguration? contentInsertionConfiguration;

  // Activates digital stylus handwritten-to-text systems (e.g., Apple Pencil Scribble).
  final bool stylusHandwritingEnabled;

  const AppTextFormField({
    super.key,
    this.suffixAsset,
    // Core & Infrastructure State
    this.groupId = EditableText,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.restorationId,
    this.statesController,

    // Styling & Visual Presentation
    // this.decoration = const InputDecoration(), make more division

    //--------------------------------
    //Input decoration section Started
    //--------------------------------
    this.icon,
    this.iconColor,
    this.label,
    this.labelText,
    this.labelStyle,
    this.floatingLabelStyle,
    this.helper,
    this.helperText,
    this.helperStyle,
    this.helperMaxLines,
    this.hintText,
    this.hint,
    this.hintStyle,
    this.hintTextDirection,
    this.hintMaxLines,
    this.hintFadeDuration,
    this.maintainHintHeight = true,
    this.maintainHintSize = true,
    this.maintainLabelSize = false,
    this.error,
    this.errorText,
    this.errorStyle,
    this.errorMaxLines,
    this.floatingLabelBehavior,
    this.floatingLabelAlignment,
    this.isCollapsed,
    this.isDense,
    this.contentPadding,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.prefix,
    this.prefixText,
    this.prefixStyle,
    this.prefixIconColor,
    this.suffixIcon,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.suffixIconColor,
    this.suffixIconConstraints,
    this.counter,
    this.counterText,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,

    //------------------------------
    //Input Decoration Section Ended
    //------------------------------
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.clipBehavior = Clip.hardEdge,

    // Interaction & Focus Behavior
    this.autofocus = false,
    this.readOnly = false,
    this.enabled,
    this.ignorePointers,
    this.canRequestFocus = true,
    this.mouseCursor,

    // Input Typing Control & Constraints
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.inputFormatters,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.maxLengthEnforcement,
    this.expands = false,

    // Keyboard Smart Features & Security
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.enableSuggestions = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableIMEPersonalizedLearning = true,
    this.spellCheckConfiguration,
    this.autofillHints,

    // Gestures & Operational Hooks
    this.onChanged,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onAppPrivateCommand,
    this.dragStartBehavior = DragStartBehavior.start,

    // Form Validation & Error Handling
    this.validator,
    this.autovalidateMode,
    this.onSaved,
    this.forceErrorText,
    this.errorBuilder,

    // Cursor & Text Selection UI
    this.showCursor,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.cursorErrorColor,
    this.cursorOpacityAnimates,
    this.enableInteractiveSelection,
    this.selectionControls,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.magnifierConfiguration,

    // Viewport Scrolling & View Settings
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.scrollPhysics,
    this.scrollController,

    // Advanced Extensions & Tooling
    this.buildCounter,
    this.undoController,
    this.contentInsertionConfiguration,
    this.stylusHandwritingEnabled =
        EditableText.defaultStylusHandwritingEnabled,
  });

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<AppColorPalette>()!;
    return TextFormField(
      key: key,
      groupId: groupId,
      controller: controller,
      initialValue: initialValue,
      focusNode: focusNode,

      decoration: InputDecoration(
        icon: icon,
        iconColor: iconColor,
        label: label,
        labelText: labelText,
        labelStyle: labelStyle,
        floatingLabelStyle: floatingLabelStyle,
        helper: helper,
        helperText: helperText,
        helperStyle: helperStyle,
        helperMaxLines: helperMaxLines,
        hintText: hintText,
        hint: hint,

        hintStyle: AppTextStyle.poppinsMedium14px.copyWith(
          color: palette.grey20,
        ),

        hintTextDirection: hintTextDirection,
        hintMaxLines: hintMaxLines,
        hintFadeDuration: hintFadeDuration,
        maintainHintSize: maintainHintHeight,
        maintainLabelSize: maintainLabelSize,
        error: error,
        errorText: errorText,
        errorStyle: errorStyle,
        errorMaxLines: errorMaxLines,
        floatingLabelBehavior: floatingLabelBehavior,
        floatingLabelAlignment: floatingLabelAlignment,
        isCollapsed: isCollapsed,
        isDense: isDense,

        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),

        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        prefix: prefix,
        prefixText: prefixText,
        prefixStyle: prefixStyle,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixAsset != null
            ? SizedBox(
                height: 16,
                width: 16,
                child: Image.asset(
                  suffixAsset!,
                  color: suffixIconColor,
                  alignment: Alignment.center,
                ),
              )
            : null,
        suffix: suffix,
        suffixText: suffixText,
        suffixStyle: suffixStyle,
        suffixIconColor: suffixIconColor,
        suffixIconConstraints: suffixIconConstraints,
        counter: counter,
        counterText: counterText,
        counterStyle: counterStyle,
        filled: true,
        fillColor: palette.backgroundGrey,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            59.29,
          ),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      style: AppTextStyle.poppinsMedium14px.copyWith(
        color: palette.grey20,
      ),
      strutStyle: strutStyle,
      textDirection: textDirection,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      autofocus: autofocus,
      readOnly: readOnly,
      showCursor: showCursor,
      obscuringCharacter: obscuringCharacter,
      obscureText: obscureText,
      smartDashesType: smartDashesType,
      smartQuotesType: smartQuotesType,
      enableSuggestions: enableSuggestions,
      maxLengthEnforcement: maxLengthEnforcement,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      onChanged: onChanged,
      onTap: onTap,
      onTapAlwaysCalled: onTapAlwaysCalled,
      onTapOutside: onTapOutside,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      validator: validator,
      errorBuilder: errorBuilder,
      inputFormatters: inputFormatters,
      enabled: enabled,
      ignorePointers: ignorePointers,
      cursorWidth: cursorWidth,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorColor: cursorColor,
      cursorErrorColor: cursorErrorColor,
      scrollPadding: scrollPadding,
      enableInteractiveSelection: enableInteractiveSelection,
      selectionControls: selectionControls,
      buildCounter: buildCounter,
      scrollPhysics: scrollPhysics,
      autofillHints: autofillHints,
      autovalidateMode: autovalidateMode,
      scrollController: scrollController,
      restorationId: restorationId,
      enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
      mouseCursor: mouseCursor,
      spellCheckConfiguration: spellCheckConfiguration,
      magnifierConfiguration: magnifierConfiguration,
      undoController: undoController,
      onAppPrivateCommand: onAppPrivateCommand,
      cursorOpacityAnimates: cursorOpacityAnimates,
      selectionHeightStyle: selectionHeightStyle,
      selectionWidthStyle: selectionWidthStyle,
      dragStartBehavior: dragStartBehavior,
      contentInsertionConfiguration: contentInsertionConfiguration,
      statesController: statesController,
      clipBehavior: clipBehavior,
      stylusHandwritingEnabled: stylusHandwritingEnabled,
      canRequestFocus: canRequestFocus,
      forceErrorText: forceErrorText,
    );
  }
}
