.class public Leu/chainfire/libsuperuser/MarkerInputStream;
.super Ljava/io/InputStream;
.source "MarkerInputStream.java"


# static fields
.field private static final EXCEPTION_EOF:Ljava/lang/String; = "EOF encountered, shell probably died"


# instance fields
.field private final buffer:[B

.field private bufferUsed:I

.field private volatile done:Z

.field private volatile eof:Z

.field private final gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

.field private final inputStream:Ljava/io/InputStream;

.field private final marker:[B

.field private final markerLength:I

.field private final markerMaxLength:I

.field private final read1:[B


# direct methods
.method public constructor <init>(Leu/chainfire/libsuperuser/StreamGobbler;Ljava/lang/String;)V
    .locals 1
    .param p1, "gobbler"    # Leu/chainfire/libsuperuser/StreamGobbler;
    .param p2, "marker"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->read1:[B

    .line 39
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    .line 41
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->eof:Z

    .line 42
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z

    .line 45
    iput-object p1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 46
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/StreamGobbler;->suspendGobbling()V

    .line 47
    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->inputStream:Ljava/io/InputStream;

    .line 48
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->marker:[B

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerMaxLength:I

    .line 51
    return-void
.end method

.method private fill(I)V
    .locals 6
    .param p1, "safeSizeToWaitFor"    # I

    .line 78
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    move v1, v0

    .local v1, "a":I
    if-gtz v0, :cond_1

    if-lez p1, :cond_4

    .line 82
    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    array-length v0, v0

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v0, v2

    .line 83
    .local v0, "left":I
    if-nez v0, :cond_2

    return-void

    .line 84
    :cond_2
    iget-object v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 85
    .local v2, "r":I
    if-ltz v2, :cond_3

    .line 86
    iget v3, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    add-int/2addr v3, v2

    iput v3, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    .line 87
    sub-int/2addr p1, v2

    .line 95
    .end local v0    # "left":I
    .end local v2    # "r":I
    goto :goto_0

    .line 92
    .restart local v0    # "left":I
    .restart local v2    # "r":I
    :cond_3
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->setEOF()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 98
    .end local v0    # "left":I
    .end local v1    # "a":I
    .end local v2    # "r":I
    :cond_4
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->setEOF()V

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z

    if-nez v0, :cond_0

    .line 173
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 174
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/MarkerInputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_0

    goto :goto_0

    .line 177
    .end local v0    # "buffer":[B
    .end local p0    # "this":Leu/chainfire/libsuperuser/MarkerInputStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isEOF()Z
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 180
    .end local p0    # "this":Leu/chainfire/libsuperuser/MarkerInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    nop

    :goto_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->read1:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Leu/chainfire/libsuperuser/MarkerInputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, "r":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 58
    :cond_0
    if-nez v0, :cond_1

    .line 61
    const-wide/16 v1, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->read1:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/MarkerInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 105
    :cond_0
    :try_start_1
    iget v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/MarkerInputStream;->fill(I)V

    .line 108
    iget v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    monitor-exit p0

    return v3

    .line 111
    :cond_1
    const/4 v0, -0x1

    .line 112
    .local v0, "match":I
    :try_start_2
    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerMaxLength:I

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "i":I
    :goto_0
    iget v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v5, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 113
    const/4 v4, 0x1

    .line 114
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v6, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerLength:I

    if-ge v5, v6, :cond_3

    .line 115
    iget-object v6, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    add-int v7, v2, v5

    aget-byte v6, v6, v7

    iget-object v7, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->marker:[B

    aget-byte v7, v7, v5

    if-eq v6, v7, :cond_2

    .line 116
    const/4 v4, 0x0

    .line 117
    goto :goto_2

    .line 114
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 120
    .end local v5    # "j":I
    .end local p0    # "this":Leu/chainfire/libsuperuser/MarkerInputStream;
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 121
    move v0, v2

    .line 122
    goto :goto_3

    .line 112
    .end local v4    # "found":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_5
    :goto_3
    if-nez v0, :cond_9

    .line 128
    :goto_4
    iget-object v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-byte v2, v2, v4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    .line 129
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v2

    if-nez v2, :cond_6

    .line 130
    invoke-direct {p0, v5}, Leu/chainfire/libsuperuser/MarkerInputStream;->fill(I)V

    goto :goto_4

    .line 129
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF encountered, shell probably died"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_7
    iget-object v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->getOnLineListener()Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->gobbler:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->getOnLineListener()Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget v7, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v7, v5

    const-string v8, "UTF-8"

    invoke-direct {v4, v6, v3, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface {v2, v4}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    .line 133
    :cond_8
    iput-boolean v5, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->done:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    monitor-exit p0

    return v1

    .line 137
    :cond_9
    if-ne v0, v1, :cond_b

    .line 138
    :try_start_3
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/MarkerInputStream;->isEOF()Z

    move-result v1

    if-nez v1, :cond_a

    .line 143
    iget v1, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->markerMaxLength:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "ret":I
    goto :goto_5

    .line 138
    .end local v1    # "ret":I
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF encountered, shell probably died"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_b
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    .restart local v1    # "ret":I
    :goto_5
    if-lez v1, :cond_c

    .line 153
    iget-object v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    sub-int/2addr v2, v1

    iput v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    .line 155
    iget-object v2, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget-object v4, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->buffer:[B

    iget v5, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->bufferUsed:I

    invoke-static {v2, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 159
    :cond_c
    const-wide/16 v2, 0x4

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    goto :goto_6

    .line 160
    :catch_0
    move-exception v2

    .line 164
    :goto_6
    monitor-exit p0

    return v1

    .line 102
    .end local v0    # "match":I
    .end local v1    # "ret":I
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized setEOF()V
    .locals 1

    monitor-enter p0

    .line 184
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/MarkerInputStream;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    .end local p0    # "this":Leu/chainfire/libsuperuser/MarkerInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
