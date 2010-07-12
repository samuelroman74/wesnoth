/*
* generated by Xtext
*/
grammar InternalWML;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.wesnoth.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.wesnoth.parser.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.xtext.parsetree.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.conversion.ValueConverterException;
import org.wesnoth.services.WMLGrammarAccess;

}

@parser::members {

 	private WMLGrammarAccess grammarAccess;
 	
    public InternalWMLParser(TokenStream input, IAstFactory factory, WMLGrammarAccess grammarAccess) {
        this(input);
        this.factory = factory;
        registerRules(grammarAccess.getGrammar());
        this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected InputStream getTokenFile() {
    	ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/wesnoth/parser/antlr/internal/InternalWML.tokens");
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "WMLRoot";	
   	}
   	
   	@Override
   	protected WMLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleWMLRoot
entryRuleWMLRoot returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getWMLRootRule(), currentNode); }
	 iv_ruleWMLRoot=ruleWMLRoot 
	 { $current=$iv_ruleWMLRoot.current; } 
	 EOF 
;

// Rule WMLRoot
ruleWMLRoot returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLRootAccess().getRtagsWMLTagParserRuleCall_0_0(), currentNode); 
	    }
		lv_Rtags_0_0=ruleWMLTag		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLRootRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"Rtags",
	        		lv_Rtags_0_0, 
	        		"WMLTag", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLRootAccess().getRmacrosWMLMacroParserRuleCall_1_0(), currentNode); 
	    }
		lv_Rmacros_1_0=ruleWMLMacro		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLRootRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"Rmacros",
	        		lv_Rmacros_1_0, 
	        		"WMLMacro", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))*
;





// Entry rule entryRuleWMLMacro
entryRuleWMLMacro returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getWMLMacroRule(), currentNode); }
	 iv_ruleWMLMacro=ruleWMLMacro 
	 { $current=$iv_ruleWMLMacro.current; } 
	 EOF 
;

// Rule WMLMacro
ruleWMLMacro returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'{' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getLeftCurlyBracketKeyword_0(), null); 
    }
(
(
		lv_macroName_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getWMLMacroAccess().getMacroNameIDTerminalRuleCall_1_0(), "macroName"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"macroName",
	        		lv_macroName_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)(
(
(
		lv_tagcontent_2_1=RULE_ID
		{
			createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentIDTerminalRuleCall_2_0_0(), "tagcontent"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"tagcontent",
	        		lv_tagcontent_2_1, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_2=RULE_STRING
		{
			createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentSTRINGTerminalRuleCall_2_0_1(), "tagcontent"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"tagcontent",
	        		lv_tagcontent_2_2, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_3=	'_' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontent_Keyword_2_0_2(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_3, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_4=	':' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentColonKeyword_2_0_3(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_4, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_5=	'-' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentHyphenMinusKeyword_2_0_4(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_5, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_6=	'.' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentFullStopKeyword_2_0_5(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_6, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_7=	'(' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentLeftParenthesisKeyword_2_0_6(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_7, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_8=	')' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentRightParenthesisKeyword_2_0_7(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_8, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_9=	'=' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentEqualsSignKeyword_2_0_8(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_9, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_tagcontent_2_10=	'/' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getTagcontentSolidusKeyword_2_0_9(), "tagcontent"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLMacroRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		add($current, "tagcontent", lv_tagcontent_2_10, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)

)
)*	'}' 
    {
        createLeafNode(grammarAccess.getWMLMacroAccess().getRightCurlyBracketKeyword_3(), null); 
    }
)
;





// Entry rule entryRuleWMLTag
entryRuleWMLTag returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getWMLTagRule(), currentNode); }
	 iv_ruleWMLTag=ruleWMLTag 
	 { $current=$iv_ruleWMLTag.current; } 
	 EOF 
;

// Rule WMLTag
ruleWMLTag returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'[' 
    {
        createLeafNode(grammarAccess.getWMLTagAccess().getLeftSquareBracketKeyword_0(), null); 
    }
(
(
		lv_name_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getWMLTagAccess().getNameIDTerminalRuleCall_1_0(), "name"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"name",
	        		lv_name_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	']' 
    {
        createLeafNode(grammarAccess.getWMLTagAccess().getRightSquareBracketKeyword_2(), null); 
    }
((
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLTagAccess().getTtagsWMLTagParserRuleCall_3_0_0(), currentNode); 
	    }
		lv_Ttags_3_0=ruleWMLTag		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"Ttags",
	        		lv_Ttags_3_0, 
	        		"WMLTag", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLTagAccess().getTkeysWMLKeyParserRuleCall_3_1_0(), currentNode); 
	    }
		lv_Tkeys_4_0=ruleWMLKey		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"Tkeys",
	        		lv_Tkeys_4_0, 
	        		"WMLKey", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLTagAccess().getTmacrosWMLMacroParserRuleCall_3_2_0(), currentNode); 
	    }
		lv_Tmacros_5_0=ruleWMLMacro		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"Tmacros",
	        		lv_Tmacros_5_0, 
	        		"WMLMacro", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))*(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLTagAccess().getEndWMLEndTagParserRuleCall_4_0(), currentNode); 
	    }
		lv_end_6_0=ruleWMLEndTag		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"end",
	        		lv_end_6_0, 
	        		"WMLEndTag", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))
;





// Entry rule entryRuleWMLEndTag
entryRuleWMLEndTag returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getWMLEndTagRule(), currentNode); }
	 iv_ruleWMLEndTag=ruleWMLEndTag 
	 { $current=$iv_ruleWMLEndTag.current; } 
	 EOF 
;

// Rule WMLEndTag
ruleWMLEndTag returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'[/' 
    {
        createLeafNode(grammarAccess.getWMLEndTagAccess().getLeftSquareBracketSolidusKeyword_0(), null); 
    }
(
(
		lv_tagname_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getWMLEndTagAccess().getTagnameIDTerminalRuleCall_1_0(), "tagname"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLEndTagRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"tagname",
	        		lv_tagname_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	']' 
    {
        createLeafNode(grammarAccess.getWMLEndTagAccess().getRightSquareBracketKeyword_2(), null); 
    }
)
;





// Entry rule entryRuleWMLKey
entryRuleWMLKey returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getWMLKeyRule(), currentNode); }
	 iv_ruleWMLKey=ruleWMLKey 
	 { $current=$iv_ruleWMLKey.current; } 
	 EOF 
;

// Rule WMLKey
ruleWMLKey returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
		lv_keyName_0_0=RULE_ID
		{
			createLeafNode(grammarAccess.getWMLKeyAccess().getKeyNameIDTerminalRuleCall_0_0(), "keyName"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"keyName",
	        		lv_keyName_0_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	'=' 
    {
        createLeafNode(grammarAccess.getWMLKeyAccess().getEqualsSignKeyword_1(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyAccess().getValueWMLKeyValueParserRuleCall_2_0(), currentNode); 
	    }
		lv_value_2_0=ruleWMLKeyValue		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"value",
	        		lv_value_2_0, 
	        		"WMLKeyValue", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))
;





// Entry rule entryRuleWMLKeyValue
entryRuleWMLKeyValue returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getWMLKeyValueRule(), currentNode); }
	 iv_ruleWMLKeyValue=ruleWMLKeyValue 
	 { $current=$iv_ruleWMLKeyValue.current; } 
	 EOF 
;

// Rule WMLKeyValue
ruleWMLKeyValue returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
(
		lv_key1Value_0_1=RULE_ID
		{
			createLeafNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueIDTerminalRuleCall_0_0_0(), "key1Value"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_1, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_key1Value_0_2=RULE_STRING
		{
			createLeafNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueSTRINGTerminalRuleCall_0_0_1(), "key1Value"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_2, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueTSTRINGParserRuleCall_0_0_2(), currentNode); 
	    }
		lv_key1Value_0_3=ruleTSTRING		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_3, 
	        		"TSTRING", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueFLOATParserRuleCall_0_0_3(), currentNode); 
	    }
		lv_key1Value_0_4=ruleFLOAT		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_4, 
	        		"FLOAT", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		lv_key1Value_0_5=RULE_IINT
		{
			createLeafNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueIINTTerminalRuleCall_0_0_4(), "key1Value"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_5, 
	        		"IINT", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey1ValuePATHParserRuleCall_0_0_5(), currentNode); 
	    }
		lv_key1Value_0_6=rulePATH		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_6, 
	        		"PATH", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueDIRECTIONParserRuleCall_0_0_6(), currentNode); 
	    }
		lv_key1Value_0_7=ruleDIRECTION		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_7, 
	        		"DIRECTION", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey1ValueLISTParserRuleCall_0_0_7(), currentNode); 
	    }
		lv_key1Value_0_8=ruleLIST		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_8, 
	        		"LIST", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

    |		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey1ValuePROGRESSIVEParserRuleCall_0_0_8(), currentNode); 
	    }
		lv_key1Value_0_9=rulePROGRESSIVE		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key1Value",
	        		lv_key1Value_0_9, 
	        		"PROGRESSIVE", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)

)
)
    |(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getWMLKeyValueAccess().getKey2ValueWMLMacroParserRuleCall_1_0(), currentNode); 
	    }
		lv_key2Value_1_0=ruleWMLMacro		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getWMLKeyValueRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"key2Value",
	        		lv_key2Value_1_0, 
	        		"WMLMacro", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))
;





// Entry rule entryRuleFLOAT
entryRuleFLOAT returns [String current=null] 
	@init { 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
	}
	:
	{ currentNode = createCompositeNode(grammarAccess.getFLOATRule(), currentNode); } 
	 iv_ruleFLOAT=ruleFLOAT 
	 { $current=$iv_ruleFLOAT.current.getText(); }  
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule FLOAT
ruleFLOAT returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(    this_IINT_0=RULE_IINT    {
		$current.merge(this_IINT_0);
    }

    { 
    createLeafNode(grammarAccess.getFLOATAccess().getIINTTerminalRuleCall_0(), null); 
    }

	kw='.' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getFLOATAccess().getFullStopKeyword_1(), null); 
    }
(    this_IINT_2=RULE_IINT    {
		$current.merge(this_IINT_2);
    }

    { 
    createLeafNode(grammarAccess.getFLOATAccess().getIINTTerminalRuleCall_2(), null); 
    }
)+)
    ;
finally {
	myHiddenTokenState.restore();
}





// Entry rule entryRuleTSTRING
entryRuleTSTRING returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getTSTRINGRule(), currentNode); } 
	 iv_ruleTSTRING=ruleTSTRING 
	 { $current=$iv_ruleTSTRING.current.getText(); }  
	 EOF 
;

// Rule TSTRING
ruleTSTRING returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(((
	kw=' ' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getTSTRINGAccess().getSpaceKeyword_0_0(), null); 
    }
)?
	kw='_' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getTSTRINGAccess().get_Keyword_0_1(), null); 
    }
(
	kw=' ' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getTSTRINGAccess().getSpaceKeyword_0_2(), null); 
    }
)?)    this_STRING_3=RULE_STRING    {
		$current.merge(this_STRING_3);
    }

    { 
    createLeafNode(grammarAccess.getTSTRINGAccess().getSTRINGTerminalRuleCall_1(), null); 
    }
)
    ;





// Entry rule entryRulePATH
entryRulePATH returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getPATHRule(), currentNode); } 
	 iv_rulePATH=rulePATH 
	 { $current=$iv_rulePATH.current.getText(); }  
	 EOF 
;

// Rule PATH
rulePATH returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(((    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    createLeafNode(grammarAccess.getPATHAccess().getIDTerminalRuleCall_0_0(), null); 
    }
)+(
	kw='-' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPATHAccess().getHyphenMinusKeyword_0_1_0(), null); 
    }

    |
	kw='/' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPATHAccess().getSolidusKeyword_0_1_1(), null); 
    }
))*(    this_ID_3=RULE_ID    {
		$current.merge(this_ID_3);
    }

    { 
    createLeafNode(grammarAccess.getPATHAccess().getIDTerminalRuleCall_1(), null); 
    }
)+
	kw='.' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPATHAccess().getFullStopKeyword_2(), null); 
    }
(    this_ID_5=RULE_ID    {
		$current.merge(this_ID_5);
    }

    { 
    createLeafNode(grammarAccess.getPATHAccess().getIDTerminalRuleCall_3(), null); 
    }
)+)
    ;





// Entry rule entryRuleDIRECTION
entryRuleDIRECTION returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getDIRECTIONRule(), currentNode); } 
	 iv_ruleDIRECTION=ruleDIRECTION 
	 { $current=$iv_ruleDIRECTION.current.getText(); }  
	 EOF 
;

// Rule DIRECTION
ruleDIRECTION returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
((
	kw='n' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getNKeyword_0_0(), null); 
    }

    |
	kw='s' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getSKeyword_0_1(), null); 
    }

    |
	kw='w' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getWKeyword_0_2(), null); 
    }

    |
	kw='e' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getEKeyword_0_3(), null); 
    }

    |
	kw='sw' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getSwKeyword_0_4(), null); 
    }

    |
	kw='se' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getSeKeyword_0_5(), null); 
    }

    |
	kw='ne' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getNeKeyword_0_6(), null); 
    }

    |
	kw='nw' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getNwKeyword_0_7(), null); 
    }
)(
	kw=',' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getDIRECTIONAccess().getCommaKeyword_1(), null); 
    }
)?)+
    ;





// Entry rule entryRuleLIST
entryRuleLIST returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getLISTRule(), currentNode); } 
	 iv_ruleLIST=ruleLIST 
	 { $current=$iv_ruleLIST.current.getText(); }  
	 EOF 
;

// Rule LIST
ruleLIST returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    createLeafNode(grammarAccess.getLISTAccess().getIDTerminalRuleCall_0(), null); 
    }
(
	kw=',' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getLISTAccess().getCommaKeyword_1_0(), null); 
    }
    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    createLeafNode(grammarAccess.getLISTAccess().getIDTerminalRuleCall_1_1(), null); 
    }
)+)
    ;





// Entry rule entryRulePROGRESSIVE
entryRulePROGRESSIVE returns [String current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getPROGRESSIVERule(), currentNode); } 
	 iv_rulePROGRESSIVE=rulePROGRESSIVE 
	 { $current=$iv_rulePROGRESSIVE.current.getText(); }  
	 EOF 
;

// Rule PROGRESSIVE
rulePROGRESSIVE returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
	    lastConsumedNode = currentNode;
    }:
((    this_IINT_0=RULE_IINT    {
		$current.merge(this_IINT_0);
    }

    { 
    createLeafNode(grammarAccess.getPROGRESSIVEAccess().getIINTTerminalRuleCall_0_0(), null); 
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getPROGRESSIVEAccess().getFLOATParserRuleCall_0_1(), currentNode); 
    }
    this_FLOAT_1=ruleFLOAT    {
		$current.merge(this_FLOAT_1);
    }

    { 
        currentNode = currentNode.getParent();
    }
)(
	kw='~' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPROGRESSIVEAccess().getTildeKeyword_1_0(), null); 
    }
(    this_IINT_3=RULE_IINT    {
		$current.merge(this_IINT_3);
    }

    { 
    createLeafNode(grammarAccess.getPROGRESSIVEAccess().getIINTTerminalRuleCall_1_1_0(), null); 
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getPROGRESSIVEAccess().getFLOATParserRuleCall_1_1_1(), currentNode); 
    }
    this_FLOAT_4=ruleFLOAT    {
		$current.merge(this_FLOAT_4);
    }

    { 
        currentNode = currentNode.getParent();
    }
))?(
	kw=':' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPROGRESSIVEAccess().getColonKeyword_2_0(), null); 
    }
    this_IINT_6=RULE_IINT    {
		$current.merge(this_IINT_6);
    }

    { 
    createLeafNode(grammarAccess.getPROGRESSIVEAccess().getIINTTerminalRuleCall_2_1(), null); 
    }
)?(
	kw=',' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPROGRESSIVEAccess().getCommaKeyword_3_0(), null); 
    }
(    this_IINT_8=RULE_IINT    {
		$current.merge(this_IINT_8);
    }

    { 
    createLeafNode(grammarAccess.getPROGRESSIVEAccess().getIINTTerminalRuleCall_3_1_0(), null); 
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getPROGRESSIVEAccess().getFLOATParserRuleCall_3_1_1(), currentNode); 
    }
    this_FLOAT_9=ruleFLOAT    {
		$current.merge(this_FLOAT_9);
    }

    { 
        currentNode = currentNode.getParent();
    }
)(
	kw='~' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPROGRESSIVEAccess().getTildeKeyword_3_2_0(), null); 
    }
(    this_IINT_11=RULE_IINT    {
		$current.merge(this_IINT_11);
    }

    { 
    createLeafNode(grammarAccess.getPROGRESSIVEAccess().getIINTTerminalRuleCall_3_2_1_0(), null); 
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getPROGRESSIVEAccess().getFLOATParserRuleCall_3_2_1_1(), currentNode); 
    }
    this_FLOAT_12=ruleFLOAT    {
		$current.merge(this_FLOAT_12);
    }

    { 
        currentNode = currentNode.getParent();
    }
))?(
	kw=':' 
    {
        $current.merge(kw);
        createLeafNode(grammarAccess.getPROGRESSIVEAccess().getColonKeyword_3_3_0(), null); 
    }
    this_IINT_14=RULE_IINT    {
		$current.merge(this_IINT_14);
    }

    { 
    createLeafNode(grammarAccess.getPROGRESSIVEAccess().getIINTTerminalRuleCall_3_3_1(), null); 
    }
)?)+)
    ;





RULE_SL_COMMENT : '#' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ID : ('a'..'z'|'A'..'Z'|'0'..'9') ('a'..'z'|'A'..'Z'|'_'|' '|'0'..'9')*;

RULE_IINT : ('-'|'+')? ('0'..'9')+;

RULE_STRING : '"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"';


