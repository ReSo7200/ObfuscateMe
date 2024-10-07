.class public final Lcom/coniy/fileprefs/FileResult;
.super Ljava/lang/Object;
.source "FileResult.java"


# instance fields
.field public final content:[B

.field public final mtime:J

.field public final size:J

.field public final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .param p1, "size"    # J
    .param p3, "mtime"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coniy/fileprefs/FileResult;->content:[B

    .line 28
    iput-object v0, p0, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    .line 29
    iput-wide p1, p0, Lcom/coniy/fileprefs/FileResult;->size:J

    .line 30
    iput-wide p3, p0, Lcom/coniy/fileprefs/FileResult;->mtime:J

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "mtime"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coniy/fileprefs/FileResult;->content:[B

    .line 42
    iput-object p1, p0, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    .line 43
    iput-wide p2, p0, Lcom/coniy/fileprefs/FileResult;->size:J

    .line 44
    iput-wide p4, p0, Lcom/coniy/fileprefs/FileResult;->mtime:J

    .line 45
    return-void
.end method

.method constructor <init>([BJJ)V
    .locals 1
    .param p1, "content"    # [B
    .param p2, "size"    # J
    .param p4, "mtime"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/coniy/fileprefs/FileResult;->content:[B

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    .line 36
    iput-wide p2, p0, Lcom/coniy/fileprefs/FileResult;->size:J

    .line 37
    iput-wide p4, p0, Lcom/coniy/fileprefs/FileResult;->mtime:J

    .line 38
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/coniy/fileprefs/FileResult;->content:[B

    const-string v2, ", "

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "content.length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/coniy/fileprefs/FileResult;->content:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v1, "stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_1
    const-string/jumbo v1, "size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-wide v1, p0, Lcom/coniy/fileprefs/FileResult;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", mtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v1, p0, Lcom/coniy/fileprefs/FileResult;->mtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
