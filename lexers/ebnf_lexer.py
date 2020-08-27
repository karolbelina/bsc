from pygments.lexer import RegexLexer, include
from pygments.token import Number, String, Name, Punctuation, Operator, \
    Text, Comment, Keyword


class EbnfLexer(RegexLexer):
    name = 'EBNF'
    aliases = ['ebnf']
    filenames = ['*.ebnf']
    mimetypes = ['text/x-ebnf']

    tokens = {
        'root': [
            include('comment_start'),
            (r'\s+', Text),
            (r'([a-zA-Z][\w\s]*)', Keyword),
            (r'([0-9]+)', Number.Integer),
            (r'"[^"]*"', String.Double),
            (r"'[^']*'", String.Single),
            (r'(\?[^?]*\?)', Name.Entity),
            (r'[\[\]{}(),|;\.]', Punctuation),
            (r'[-=\*]', Operator),
        ],
        'comment_start': [
            (r'\(\*', Comment.Multiline, 'comment'),
        ],
        'comment': [
            (r'[^(\*\))]', Comment.Multiline),
            include('comment_start'),
            (r'\*\)', Comment.Multiline, '#pop'),
        ],
    }
