.class Landroidx/test/internal/util/ProcSummary$Builder;
.super Ljava/lang/Object;
.source "ProcSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/ProcSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private cmdline:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private realUid:Ljava/lang/String;

.field private startTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 130
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 130
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 130
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 130
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 130
    iget-object v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/test/internal/util/ProcSummary$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/test/internal/util/ProcSummary$Builder;

    .line 130
    iget-wide v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    return-wide v0
.end method


# virtual methods
.method build()Landroidx/test/internal/util/ProcSummary;
    .locals 2

    .line 184
    new-instance v0, Landroidx/test/internal/util/ProcSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/util/ProcSummary;-><init>(Landroidx/test/internal/util/ProcSummary$Builder;Landroidx/test/internal/util/ProcSummary$1;)V

    return-object v0
.end method

.method withCmdline(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0
    .param p1, "cmdline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmdline"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method withName(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method withParent(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 4
    .param p1, "ppid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ppid"
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    .line 145
    return-object p0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method withPid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 4
    .param p1, "pid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 160
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    nop

    .line 164
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    .line 165
    return-object p0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method withRealUid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 170
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    .line 175
    return-object p0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method withStartTime(J)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0
    .param p1, "startTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 179
    iput-wide p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    .line 180
    return-object p0
.end method
