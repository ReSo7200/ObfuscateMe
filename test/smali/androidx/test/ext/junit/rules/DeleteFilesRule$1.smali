.class Landroidx/test/ext/junit/rules/DeleteFilesRule$1;
.super Lorg/junit/runners/model/Statement;
.source "DeleteFilesRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/ext/junit/rules/DeleteFilesRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/ext/junit/rules/DeleteFilesRule;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Landroidx/test/ext/junit/rules/DeleteFilesRule;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/ext/junit/rules/DeleteFilesRule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$base"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;->this$0:Landroidx/test/ext/junit/rules/DeleteFilesRule;

    iput-object p2, p0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    invoke-static {}, Landroidx/test/core/app/ApplicationProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "directories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    nop

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    nop

    .line 71
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v2, "existingFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 76
    .local v4, "directory":Ljava/io/File;
    invoke-static {v2, v4}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->access$000(Ljava/util/Set;Ljava/io/File;)V

    .line 77
    .end local v4    # "directory":Ljava/io/File;
    goto :goto_0

    .line 79
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroidx/test/ext/junit/rules/DeleteFilesRule$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v3}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 82
    .restart local v4    # "directory":Ljava/io/File;
    invoke-static {v2, v4}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->access$100(Ljava/util/Set;Ljava/io/File;)V

    .line 83
    .end local v4    # "directory":Ljava/io/File;
    goto :goto_1

    .line 84
    :cond_2
    nop

    .line 85
    return-void

    .line 81
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 82
    .local v5, "directory":Ljava/io/File;
    invoke-static {v2, v5}, Landroidx/test/ext/junit/rules/DeleteFilesRule;->access$100(Ljava/util/Set;Ljava/io/File;)V

    .line 83
    .end local v5    # "directory":Ljava/io/File;
    goto :goto_2

    .line 84
    :cond_3
    throw v3
.end method
