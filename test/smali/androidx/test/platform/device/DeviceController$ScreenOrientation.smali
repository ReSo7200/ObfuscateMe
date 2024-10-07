.class public final enum Landroidx/test/platform/device/DeviceController$ScreenOrientation;
.super Ljava/lang/Enum;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/platform/device/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/platform/device/DeviceController$ScreenOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/platform/device/DeviceController$ScreenOrientation;

.field public static final enum LANDSCAPE:Landroidx/test/platform/device/DeviceController$ScreenOrientation;

.field public static final enum PORTRAIT:Landroidx/test/platform/device/DeviceController$ScreenOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/platform/device/DeviceController$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;->PORTRAIT:Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    .line 48
    new-instance v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/platform/device/DeviceController$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;->LANDSCAPE:Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    .line 46
    sget-object v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;->PORTRAIT:Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    sget-object v1, Landroidx/test/platform/device/DeviceController$ScreenOrientation;->LANDSCAPE:Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    filled-new-array {v0, v1}, [Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    move-result-object v0

    sput-object v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;->$VALUES:[Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/test/platform/device/DeviceController$ScreenOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 46
    const-class v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    return-object v0
.end method

.method public static values()[Landroidx/test/platform/device/DeviceController$ScreenOrientation;
    .locals 1

    .line 46
    sget-object v0, Landroidx/test/platform/device/DeviceController$ScreenOrientation;->$VALUES:[Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    invoke-virtual {v0}, [Landroidx/test/platform/device/DeviceController$ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/platform/device/DeviceController$ScreenOrientation;

    return-object v0
.end method
