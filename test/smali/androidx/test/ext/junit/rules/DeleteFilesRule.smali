.class public final Landroidx/test/ext/junit/rules/DeleteFilesRule;
.super Ljava/lang/Object;
.source "DeleteFilesRule.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Set;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/io/File;

    .line 51
    invoke-static {p0, p1}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->findFilesRecursively(Ljava/util/Set;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Set;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Set;
    .param p1, "x1"    # Ljava/io/File;

    .line 51
    invoke-static {p0, p1}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->deleteFilesRecursively(Ljava/util/Set;Ljava/io/File;)V

    return-void
.end method

.method private static deleteFilesRecursively(Ljava/util/Set;Ljava/io/File;)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingFiles",
            "directory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 106
    .local p0, "existingFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_5

    .line 108
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 109
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v5, "DeleteRules failed to delete: "

    if-eqz v4, :cond_3

    .line 110
    invoke-static {}, Landroidx/test/platform/io/PlatformTestStorageRegistry;->getInstance()Landroidx/test/platform/io/PlatformTestStorage;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/test/platform/io/PlatformTestStorage;->isTestStorageFilePath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    goto/16 :goto_2

    .line 113
    :cond_0
    invoke-static {p0, v3}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->deleteFilesRecursively(Ljava/util/Set;Ljava/io/File;)V

    .line 114
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 116
    .local v4, "filesInDirectory":[Ljava/io/File;
    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 117
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteRules failed to delete (not a directory or I/O error): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_1
    array-length v6, v4

    if-nez v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    .end local v4    # "filesInDirectory":[Ljava/io/File;
    :cond_2
    :goto_1
    goto :goto_2

    .line 124
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->isConstant(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 125
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 126
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 132
    :cond_5
    return-void
.end method

.method private static findFilesRecursively(Ljava/util/Set;Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingFiles",
            "directory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 94
    .local p0, "existingFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 95
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 96
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    .local v3, "file":Ljava/io/File;
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-static {p0, v3}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->findFilesRecursively(Ljava/util/Set;Ljava/io/File;)V

    .line 96
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method private static isConstant(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "base",
            "description"
        }
    .end annotation

    .line 55
    new-instance v0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;

    invoke-direct {v0, p0, p1}, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;-><init>(Landroidx/test/ext/junit/rules/DeleteFilesRule;Lorg/junit/runners/model/Statement;)V

    return-object v0
.end method
