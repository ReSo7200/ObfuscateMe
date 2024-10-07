.class public abstract Lorg/hamcrest/BaseDescription;
.super Ljava/lang/Object;
.source "BaseDescription.java"

# interfaces
.implements Lorg/hamcrest/Description;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/hamcrest/Description;
    .locals 2
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/hamcrest/SelfDescribing;",
            ">;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation

    .line 89
    .local p4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/hamcrest/SelfDescribing;>;"
    const/4 v0, 0x0

    .line 91
    .local v0, "separate":Z
    invoke-virtual {p0, p1}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 92
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hamcrest/SelfDescribing;

    invoke-virtual {p0, v1}, Lorg/hamcrest/BaseDescription;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, p3}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 99
    return-object p0
.end method

.method private appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/hamcrest/Description;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation

    .line 80
    .local p4, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v0, Lorg/hamcrest/internal/SelfDescribingValueIterator;

    invoke-direct {v0, p4}, Lorg/hamcrest/internal/SelfDescribingValueIterator;-><init>(Ljava/util/Iterator;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hamcrest/BaseDescription;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/hamcrest/Description;

    move-result-object v0

    return-object v0
.end method

.method private descriptionOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 62
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toJavaSyntax(C)V
    .locals 1
    .param p1, "ch"    # C

    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-virtual {p0, p1}, Lorg/hamcrest/BaseDescription;->append(C)V

    goto :goto_0

    .line 129
    :sswitch_0
    const-string v0, "\\\""

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 130
    goto :goto_0

    .line 135
    :sswitch_1
    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 136
    goto :goto_0

    .line 132
    :sswitch_2
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 133
    goto :goto_0

    .line 138
    :sswitch_3
    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 139
    nop

    .line 143
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method private toJavaSyntax(Ljava/lang/String;)V
    .locals 3
    .param p1, "unformatted"    # Ljava/lang/String;

    .line 119
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/hamcrest/BaseDescription;->toJavaSyntax(C)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 124
    return-void
.end method


# virtual methods
.method protected abstract append(C)V
.end method

.method protected append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;
    .locals 0
    .param p1, "value"    # Lorg/hamcrest/SelfDescribing;

    .line 24
    invoke-interface {p1, p0}, Lorg/hamcrest/SelfDescribing;->describeTo(Lorg/hamcrest/Description;)V

    .line 25
    return-object p0
.end method

.method public appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/hamcrest/SelfDescribing;",
            ">;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation

    .line 85
    .local p4, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/hamcrest/SelfDescribing;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hamcrest/BaseDescription;->appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/hamcrest/Description;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Ljava/lang/String;)Lorg/hamcrest/Description;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 19
    return-object p0
.end method

.method public appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 30
    if-nez p1, :cond_0

    .line 31
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/hamcrest/BaseDescription;->toJavaSyntax(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 35
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 36
    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lorg/hamcrest/BaseDescription;->toJavaSyntax(C)V

    .line 37
    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(C)V

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    const/16 v1, 0x3c

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p0, v1}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 40
    invoke-direct {p0, p1}, Lorg/hamcrest/BaseDescription;->descriptionOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "s>"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p0, v1}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 44
    invoke-direct {p0, p1}, Lorg/hamcrest/BaseDescription;->descriptionOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 45
    const-string v0, "L>"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p0, v1}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 48
    invoke-direct {p0, p1}, Lorg/hamcrest/BaseDescription;->descriptionOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 49
    const-string v0, "F>"

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Lorg/hamcrest/internal/ArrayIterator;

    invoke-direct {v0, p1}, Lorg/hamcrest/internal/ArrayIterator;-><init>(Ljava/lang/Object;)V

    const-string v1, "["

    const-string v2, ", "

    const-string v3, "]"

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/hamcrest/BaseDescription;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/hamcrest/Description;

    goto :goto_0

    .line 53
    :cond_6
    invoke-virtual {p0, v1}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 54
    invoke-direct {p0, p1}, Lorg/hamcrest/BaseDescription;->descriptionOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(Ljava/lang/String;)V

    .line 55
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/hamcrest/BaseDescription;->append(C)V

    .line 57
    :goto_0
    return-object p0
.end method

.method public appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation

    .line 76
    .local p4, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hamcrest/BaseDescription;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/hamcrest/Description;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/hamcrest/Description;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TT;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation

    .line 71
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/hamcrest/BaseDescription;->appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;

    move-result-object v0

    return-object v0
.end method
