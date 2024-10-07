.class public final Landroidx/test/internal/util/ProcSummary;
.super Ljava/lang/Object;
.source "ProcSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/util/ProcSummary$Builder;,
        Landroidx/test/internal/util/ProcSummary$SummaryException;
    }
.end annotation


# instance fields
.field public final cmdline:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final parent:Ljava/lang/String;

.field public final pid:Ljava/lang/String;

.field public final realUid:Ljava/lang/String;

.field public final startTime:J


# direct methods
.method private constructor <init>(Landroidx/test/internal/util/ProcSummary$Builder;)V
    .locals 2
    .param p1, "b"    # Landroidx/test/internal/util/ProcSummary$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$000(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$100(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$200(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$300(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$400(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Landroidx/test/internal/util/ProcSummary$Builder;->access$500(Landroidx/test/internal/util/ProcSummary$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/util/ProcSummary;->startTime:J

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/internal/util/ProcSummary$Builder;Landroidx/test/internal/util/ProcSummary$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;
    .param p2, "x1"    # Landroidx/test/internal/util/ProcSummary$1;

    .line 31
    invoke-direct {p0, p1}, Landroidx/test/internal/util/ProcSummary;-><init>(Landroidx/test/internal/util/ProcSummary$Builder;)V

    return-void
.end method

.method static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;
    .locals 8
    .param p0, "statLine"    # Ljava/lang/String;
    .param p1, "statusContent"    # Ljava/lang/String;
    .param p2, "cmdline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "statLine",
            "statusContent",
            "cmdline"
        }
    .end annotation

    .line 112
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "stats":[Ljava/lang/String;
    const-string v2, "\nUid:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 115
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v2, "\\s"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "uids":[Ljava/lang/String;
    new-instance v3, Landroidx/test/internal/util/ProcSummary$Builder;

    invoke-direct {v3}, Landroidx/test/internal/util/ProcSummary$Builder;-><init>()V

    .line 120
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/test/internal/util/ProcSummary$Builder;->withPid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v3

    .line 121
    const/16 v7, 0x28

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/test/internal/util/ProcSummary$Builder;->withName(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    aget-object v3, v1, v4

    .line 122
    invoke-virtual {v0, v3}, Landroidx/test/internal/util/ProcSummary$Builder;->withParent(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    aget-object v3, v2, v4

    .line 123
    invoke-virtual {v0, v3}, Landroidx/test/internal/util/ProcSummary$Builder;->withRealUid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/test/internal/util/ProcSummary$Builder;->withCmdline(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    const/16 v3, 0x13

    aget-object v3, v1, v3

    .line 125
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/test/internal/util/ProcSummary$Builder;->withStartTime(J)Landroidx/test/internal/util/ProcSummary$Builder;

    move-result-object v0

    .line 126
    .local v0, "b":Landroidx/test/internal/util/ProcSummary$Builder;
    invoke-virtual {v0}, Landroidx/test/internal/util/ProcSummary$Builder;->build()Landroidx/test/internal/util/ProcSummary;

    move-result-object v3

    return-object v3
.end method

.method private static final readToString(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 74
    .local v1, "buff":[C
    const/4 v2, 0x0

    .line 76
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 77
    const/4 v3, 0x0

    .line 79
    .local v3, "read":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    move v3, v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 80
    invoke-virtual {v0, v1, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    nop

    .line 90
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    goto :goto_1

    .line 91
    :catch_0
    move-exception v5

    .line 82
    :goto_1
    return-object v4

    .line 88
    .end local v3    # "read":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 85
    :catch_1
    move-exception v3

    .line 86
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroidx/test/internal/util/ProcSummary$SummaryException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/test/internal/util/ProcSummary$SummaryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "buff":[C
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local p0    # "path":Ljava/io/File;
    throw v4

    .line 83
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "buff":[C
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local p0    # "path":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 84
    .local v3, "re":Ljava/lang/RuntimeException;
    new-instance v4, Landroidx/test/internal/util/ProcSummary$SummaryException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroidx/test/internal/util/ProcSummary$SummaryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "buff":[C
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local p0    # "path":Ljava/io/File;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .end local v3    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "buff":[C
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local p0    # "path":Ljava/io/File;
    :goto_2
    if-eqz v2, :cond_1

    .line 90
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 93
    goto :goto_3

    .line 91
    :catch_3
    move-exception v4

    .line 95
    :cond_1
    :goto_3
    throw v3
.end method

.method public static summarize(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;
    .locals 7
    .param p0, "pid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "stat"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v0, "statFile":Ljava/io/File;
    invoke-static {v0}, Landroidx/test/internal/util/ProcSummary;->readToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "statContent":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "status"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v3, "statusFile":Ljava/io/File;
    invoke-static {v3}, Landroidx/test/internal/util/ProcSummary;->readToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "statusContent":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cmdline"

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v5

    .line 66
    .local v2, "cmdlineFile":Ljava/io/File;
    invoke-static {v2}, Landroidx/test/internal/util/ProcSummary;->readToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "cmdline":Ljava/lang/String;
    invoke-static {v1, v4, v5}, Landroidx/test/internal/util/ProcSummary;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    instance-of v1, p1, Landroidx/test/internal/util/ProcSummary;

    if-nez v1, :cond_1

    .line 212
    return v0

    .line 214
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/test/internal/util/ProcSummary;

    .line 215
    .local v1, "ops":Landroidx/test/internal/util/ProcSummary;
    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v1, Landroidx/test/internal/util/ProcSummary;->startTime:J

    iget-wide v4, p0, Landroidx/test/internal/util/ProcSummary;->startTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 215
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 190
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    iget-object v1, p0, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    iget-object v2, p0, Landroidx/test/internal/util/ProcSummary;->pid:Ljava/lang/String;

    iget-object v3, p0, Landroidx/test/internal/util/ProcSummary;->parent:Ljava/lang/String;

    iget-object v4, p0, Landroidx/test/internal/util/ProcSummary;->realUid:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/test/internal/util/ProcSummary;->startTime:J

    .line 198
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 190
    const-string v1, "ProcSummary(name: \'%s\', cmdline: \'%s\', pid: \'%s\', parent: \'%s\', realUid: \'%s\', startTime: %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
