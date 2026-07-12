.class public abstract Landroidx/appcompat/view/menu/u41;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$e;

.field public static c:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "dalvik.system.VMRuntime"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u41;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getRuntime"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/u41;->b:Landroidx/appcompat/view/menu/go0$e;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const-string v1, "setTargetSdkVersion"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u41;->c:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
