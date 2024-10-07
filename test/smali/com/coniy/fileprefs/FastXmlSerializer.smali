.class public Lcom/coniy/fileprefs/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final DEFAULT_BUFFER_LEN:I = 0x8000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private final mBufferLen:I

.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "&#0;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "&#1;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "&#2;"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "&#3;"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "&#4;"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "&#5;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "&#6;"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "&#7;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "&#8;"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "&#9;"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "&#10;"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "&#11;"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "&#12;"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "&#13;"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "&#14;"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "&#15;"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "&#16;"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "&#17;"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "&#18;"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "&#19;"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "&#20;"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "&#21;"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "&#22;"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "&#23;"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "&#24;"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "&#25;"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "&#26;"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "&#27;"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "&#28;"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "&#29;"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "&#30;"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "&#31;"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v3, "&quot;"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v3, "&amp;"

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v2, v0, v1

    const/16 v1, 0x28

    aput-object v2, v0, v1

    const/16 v1, 0x29

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    aput-object v2, v0, v1

    const/16 v1, 0x30

    aput-object v2, v0, v1

    const/16 v1, 0x31

    aput-object v2, v0, v1

    const/16 v1, 0x32

    aput-object v2, v0, v1

    const/16 v1, 0x33

    aput-object v2, v0, v1

    const/16 v1, 0x34

    aput-object v2, v0, v1

    const/16 v1, 0x35

    aput-object v2, v0, v1

    const/16 v1, 0x36

    aput-object v2, v0, v1

    const/16 v1, 0x37

    aput-object v2, v0, v1

    const/16 v1, 0x38

    aput-object v2, v0, v1

    const/16 v1, 0x39

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v3, "&lt;"

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v3, "&gt;"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    aput-object v2, v0, v1

    sput-object v0, Lcom/coniy/fileprefs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 51
    const-string v0, "                                                              "

    sput-object v0, Lcom/coniy/fileprefs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    const v0, 0x8000

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mIndent:Z

    .line 61
    iput v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 73
    if-lez p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const v0, 0x8000

    :goto_0
    iput v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    .line 74
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mText:[C

    .line 75
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method

.method private append(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 79
    .local v0, "pos":I
    iget v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/coniy/fileprefs/FastXmlSerializer;->flush()V

    .line 81
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 84
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 85
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 124
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_2

    .line 88
    add-int v0, p2, p3

    .line 89
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 90
    iget v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    add-int/2addr v1, p2

    .line 91
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    iget v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    goto :goto_1

    :cond_0
    sub-int v2, v0, p2

    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 92
    move p2, v1

    .line 93
    .end local v1    # "next":I
    goto :goto_0

    .line 94
    :cond_1
    return-void

    .line 96
    .end local v0    # "end":I
    :cond_2
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 97
    .local v0, "pos":I
    add-int v1, v0, p3

    iget v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    if-le v1, v2, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/coniy/fileprefs/FastXmlSerializer;->flush()V

    .line 99
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 101
    :cond_3
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    add-int v1, v0, p3

    iput v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 103
    return-void
.end method

.method private append([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    if-le p3, v0, :cond_2

    .line 106
    add-int v0, p2, p3

    .line 107
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 108
    iget v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    add-int/2addr v1, p2

    .line 109
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    iget v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    goto :goto_1

    :cond_0
    sub-int v2, v0, p2

    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/coniy/fileprefs/FastXmlSerializer;->append([CII)V

    .line 110
    move p2, v1

    .line 111
    .end local v1    # "next":I
    goto :goto_0

    .line 112
    :cond_1
    return-void

    .line 114
    .end local v0    # "end":I
    :cond_2
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 115
    .local v0, "pos":I
    add-int v1, v0, p3

    iget v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBufferLen:I

    if-le v1, v2, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/coniy/fileprefs/FastXmlSerializer;->flush()V

    .line 117
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    add-int v1, v0, p3

    iput v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 121
    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    mul-int/lit8 p1, p1, 0x4

    .line 127
    sget-object v0, Lcom/coniy/fileprefs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 128
    sget-object v0, Lcom/coniy/fileprefs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 130
    :cond_0
    sget-object v0, Lcom/coniy/fileprefs/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 131
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 134
    .local v0, "N":I
    sget-object v1, Lcom/coniy/fileprefs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v1, v1

    .line 135
    .local v1, "NE":C
    sget-object v2, Lcom/coniy/fileprefs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 136
    .local v2, "escapes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 138
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 139
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 140
    .local v5, "c":C
    if-lt v5, v1, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    aget-object v6, v2, v5

    .line 142
    .local v6, "escape":Ljava/lang/String;
    if-nez v6, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    if-ge v3, v4, :cond_2

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 144
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .line 145
    invoke-direct {p0, v6}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 138
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    :cond_3
    if-ge v3, v4, :cond_4

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 148
    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/coniy/fileprefs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v0, v0

    .line 151
    .local v0, "NE":C
    sget-object v1, Lcom/coniy/fileprefs/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 152
    .local v1, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 153
    .local v2, "end":I
    move v3, p2

    .line 155
    .local v3, "lastPos":I
    move v4, p2

    .local v4, "pos":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 156
    aget-char v5, p1, v4

    .line 157
    .local v5, "c":C
    if-lt v5, v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    aget-object v6, v1, v5

    .line 159
    .local v6, "escape":Ljava/lang/String;
    if-nez v6, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    if-ge v3, v4, :cond_2

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/coniy/fileprefs/FastXmlSerializer;->append([CII)V

    .line 161
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .line 162
    invoke-direct {p0, v6}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 155
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_3
    if-ge v3, v4, :cond_4

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/coniy/fileprefs/FastXmlSerializer;->append([CII)V

    .line 165
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v1, v0

    .local v1, "position":I
    if-lez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 224
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 225
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(C)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(C)V

    .line 173
    :cond_0
    invoke-direct {p0, p2}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 174
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p3}, Lcom/coniy/fileprefs/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 176
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(C)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 178
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/coniy/fileprefs/FastXmlSerializer;->flush()V

    .line 194
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    .line 198
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    if-eqz v0, :cond_1

    .line 202
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->appendIndent(I)V

    .line 204
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 205
    if-eqz p1, :cond_2

    .line 206
    invoke-direct {p0, p1}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 207
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(C)V

    .line 209
    :cond_2
    invoke-direct {p0, p2}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 210
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 212
    :goto_0
    iput-boolean v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    .line 214
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mText:[C

    iget v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 233
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 235
    .local v2, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/coniy/fileprefs/FastXmlSerializer;->flushBytes()V

    .line 239
    iget-object v3, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 240
    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FastXmlSerializer;->flushBytes()V

    .line 245
    iget-object v3, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 246
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_1

    .line 236
    .restart local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .restart local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v2    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v2, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mText:[C

    iget v3, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 248
    iget-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 250
    :goto_1
    iput v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mPos:I

    .line 252
    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 282
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mIndent:Z

    .line 284
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 290
    if-eqz p1, :cond_0

    .line 294
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 295
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 296
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    nop

    .line 304
    iput-object p1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 311
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    move-object v2, v1

    check-cast v2, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 297
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    move-object v2, v1

    check-cast v2, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 291
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 315
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 329
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 332
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 333
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 336
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->appendIndent(I)V

    .line 338
    :cond_1
    iget v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mNesting:I

    .line 339
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(C)V

    .line 340
    if-eqz p1, :cond_2

    .line 341
    invoke-direct {p0, p1}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 342
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(C)V

    .line 344
    :cond_2
    invoke-direct {p0, p2}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 345
    iput-boolean v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 347
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 363
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 365
    iput-boolean v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    .line 367
    :cond_0
    invoke-direct {p0, p1}, Lcom/coniy/fileprefs/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 368
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 371
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/coniy/fileprefs/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 353
    iput-boolean v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mInTag:Z

    .line 355
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coniy/fileprefs/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 356
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 357
    add-int v0, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-char v0, p1, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/coniy/fileprefs/FastXmlSerializer;->mLineStart:Z

    .line 359
    :cond_2
    return-object p0
.end method
