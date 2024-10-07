.class Leu/chainfire/libsuperuser/Shell$Command;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation


# static fields
.field private static commandCounter:I


# instance fields
.field private final code:I

.field private final commands:[Ljava/lang/String;

.field private final marker:Ljava/lang/String;

.field private volatile markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

.field private final onCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

.field private final onCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

.field private final onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

.field private final onCommandResultListener2:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 909
    const/4 v0, 0x0

    sput v0, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V
    .locals 6
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "code"    # I
    .param p3, "listener"    # Leu/chainfire/libsuperuser/Shell$OnResult;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

    .line 929
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 930
    new-array v0, v2, [Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    goto :goto_0

    .line 931
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 932
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    goto :goto_0

    .line 933
    :cond_1
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 934
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    .line 938
    :goto_0
    iput p2, p0, Leu/chainfire/libsuperuser/Shell$Command;->code:I

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v3, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    add-int/2addr v3, v2

    sput v3, Leu/chainfire/libsuperuser/Shell$Command;->commandCounter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "-%08x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->marker:Ljava/lang/String;

    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "commandResultListener":Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
    const/4 v1, 0x0

    .line 943
    .local v1, "commandResultListener2":Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;
    const/4 v2, 0x0

    .line 944
    .local v2, "commandLineListener":Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;
    const/4 v3, 0x0

    .line 945
    .local v3, "commandInputStreamListener":Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;
    if-eqz p3, :cond_6

    .line 946
    instance-of v4, p3, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    if-eqz v4, :cond_2

    .line 947
    move-object v3, p3

    check-cast v3, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    goto :goto_1

    .line 948
    :cond_2
    instance-of v4, p3, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    if-eqz v4, :cond_3

    .line 949
    move-object v2, p3

    check-cast v2, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    goto :goto_1

    .line 950
    :cond_3
    instance-of v4, p3, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    if-eqz v4, :cond_4

    .line 951
    move-object v1, p3

    check-cast v1, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    goto :goto_1

    .line 952
    :cond_4
    instance-of v4, p3, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    if-eqz v4, :cond_5

    .line 953
    move-object v0, p3

    check-cast v0, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    goto :goto_1

    .line 955
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "OnResult is not a supported callback interface"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 958
    :cond_6
    :goto_1
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    .line 959
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener2:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    .line 960
    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    .line 961
    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    .line 962
    return-void

    .line 936
    .end local v0    # "commandResultListener":Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
    .end local v1    # "commandResultListener2":Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;
    .end local v2    # "commandLineListener":Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;
    .end local v3    # "commandInputStreamListener":Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commands parameter must be of type String, List<String> or String[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->commands:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    return-object v0
.end method

.method static synthetic access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandResultListener2:Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    return-object v0
.end method

.method static synthetic access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandInputStreamListener:Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    return-object v0
.end method

.method static synthetic access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->marker:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/MarkerInputStream;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

    return-object v0
.end method

.method static synthetic access$2102(Leu/chainfire/libsuperuser/Shell$Command;Leu/chainfire/libsuperuser/MarkerInputStream;)Leu/chainfire/libsuperuser/MarkerInputStream;
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;
    .param p1, "x1"    # Leu/chainfire/libsuperuser/MarkerInputStream;

    .line 908
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Command;->markerInputStream:Leu/chainfire/libsuperuser/MarkerInputStream;

    return-object p1
.end method

.method static synthetic access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->onCommandLineListener:Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    return-object v0
.end method

.method static synthetic access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 908
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Command;->code:I

    return v0
.end method
