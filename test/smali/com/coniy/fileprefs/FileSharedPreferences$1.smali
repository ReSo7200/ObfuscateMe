.class Lcom/coniy/fileprefs/FileSharedPreferences$1;
.super Ljava/lang/Thread;
.source "FileSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coniy/fileprefs/FileSharedPreferences;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coniy/fileprefs/FileSharedPreferences;


# direct methods
.method constructor <init>(Lcom/coniy/fileprefs/FileSharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coniy/fileprefs/FileSharedPreferences;
    .param p2, "x0"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/coniy/fileprefs/FileSharedPreferences$1;->this$0:Lcom/coniy/fileprefs/FileSharedPreferences;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences$1;->this$0:Lcom/coniy/fileprefs/FileSharedPreferences;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/coniy/fileprefs/FileSharedPreferences$1;->this$0:Lcom/coniy/fileprefs/FileSharedPreferences;

    invoke-static {v1}, Lcom/coniy/fileprefs/FileSharedPreferences;->access$000(Lcom/coniy/fileprefs/FileSharedPreferences;)V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
