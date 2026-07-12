.class public abstract Landroidx/appcompat/view/menu/km;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.hardware.display.DisplayManagerGlobal"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/km;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "mDm"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/km;->b:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getInstance"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/km;->c:Landroidx/appcompat/view/menu/go0$e;

    return-void
.end method
