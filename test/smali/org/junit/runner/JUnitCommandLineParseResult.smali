.class Lorg/junit/runner/JUnitCommandLineParseResult;
.super Ljava/lang/Object;
.source "JUnitCommandLineParseResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;
    }
.end annotation


# instance fields
.field private final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final filterSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parserErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    .line 20
    return-void
.end method

.method private applyFilterSpecs(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;
    .locals 4
    .param p1, "request"    # Lorg/junit/runner/Request;

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "filterSpec":Ljava/lang/String;
    invoke-static {p1, v1}, Lorg/junit/runner/FilterFactories;->createFilterFromFilterSpec(Lorg/junit/runner/Request;Ljava/lang/String;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v2

    .line 129
    .local v2, "filter":Lorg/junit/runner/manipulation/Filter;
    invoke-virtual {p1, v2}, Lorg/junit/runner/Request;->filterWith(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/Request;

    move-result-object v3
    :try_end_0
    .catch Lorg/junit/runner/FilterFactory$FilterNotCreatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    .line 130
    .end local v1    # "filterSpec":Ljava/lang/String;
    .end local v2    # "filter":Lorg/junit/runner/manipulation/Filter;
    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
    invoke-direct {p0, v0}, Lorg/junit/runner/JUnitCommandLineParseResult;->errorReport(Ljava/lang/Throwable;)Lorg/junit/runner/Request;

    move-result-object v1

    return-object v1
.end method

.method private copyArray([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 88
    sub-int v0, p3, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 89
    .local v0, "result":[Ljava/lang/String;
    move v1, p2

    .local v1, "j":I
    :goto_0
    if-eq v1, p3, :cond_0

    .line 90
    sub-int v2, v1, p2

    aget-object v3, p1, v1

    aput-object v3, v0, v2

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "j":I
    :cond_0
    return-object v0
.end method

.method private errorReport(Ljava/lang/Throwable;)Lorg/junit/runner/Request;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 106
    const-class v0, Lorg/junit/runner/JUnitCommandLineParseResult;

    invoke-static {v0, p1}, Lorg/junit/runner/Request;->errorReport(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/junit/runner/Request;

    move-result-object v0

    return-object v0
.end method

.method public static parse([Ljava/lang/String;)Lorg/junit/runner/JUnitCommandLineParseResult;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/junit/runner/JUnitCommandLineParseResult;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCommandLineParseResult;-><init>()V

    .line 44
    .local v0, "result":Lorg/junit/runner/JUnitCommandLineParseResult;
    invoke-direct {v0, p0}, Lorg/junit/runner/JUnitCommandLineParseResult;->parseArgs([Ljava/lang/String;)V

    .line 46
    return-object v0
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lorg/junit/runner/JUnitCommandLineParseResult;->parseOptions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCommandLineParseResult;->parseParameters([Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public createRequest(Lorg/junit/runner/Computer;)Lorg/junit/runner/Request;
    .locals 2
    .param p1, "computer"    # Lorg/junit/runner/Computer;

    .line 115
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    iget-object v1, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/junit/runner/Request;->classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    .line 118
    .local v0, "request":Lorg/junit/runner/Request;
    invoke-direct {p0, v0}, Lorg/junit/runner/JUnitCommandLineParseResult;->applyFilterSpecs(Lorg/junit/runner/Request;)Lorg/junit/runner/Request;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "request":Lorg/junit/runner/Request;
    :cond_0
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    iget-object v1, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lorg/junit/runner/JUnitCommandLineParseResult;->errorReport(Ljava/lang/Throwable;)Lorg/junit/runner/Request;

    move-result-object v0

    return-object v0
.end method

.method public getClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method varargs parseOptions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_6

    .line 55
    aget-object v1, p1, v0

    .line 57
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    invoke-direct {p0, p1, v2, v3}, Lorg/junit/runner/JUnitCommandLineParseResult;->copyArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 59
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    const-string v2, "--filter="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "--filter"

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    iget-object v2, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    new-instance v3, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JUnit knows nothing about the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " option"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 66
    aget-object v2, p1, v0

    .local v2, "filterSpec":Ljava/lang/String;
    goto :goto_2

    .line 68
    .end local v2    # "filterSpec":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    new-instance v3, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value not specified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/junit/runner/JUnitCommandLineParseResult$CommandLineParserError;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_4

    .line 72
    :cond_4
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2    # "filterSpec":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->filterSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "filterSpec":Ljava/lang/String;
    nop

    .line 54
    .end local v1    # "arg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 80
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_5
    array-length v2, p1

    invoke-direct {p0, p1, v0, v2}, Lorg/junit/runner/JUnitCommandLineParseResult;->copyArray([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 84
    .end local v0    # "i":I
    .end local v1    # "arg":Ljava/lang/String;
    :cond_6
    :goto_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method parseParameters([Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/String;

    .line 96
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 98
    .local v3, "arg":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->classes:Ljava/util/List;

    invoke-static {v3}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_1

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Lorg/junit/runner/JUnitCommandLineParseResult;->parserErrors:Ljava/util/List;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find class ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method
