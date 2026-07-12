.class public abstract Landroidx/appcompat/view/menu/tg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$d;

.field public static f:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/tg;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "mBasePackageName"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/tg;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mPackageInfo"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/tg;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "mPackageManager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/tg;->d:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setOuterContext"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/tg;->e:Landroidx/appcompat/view/menu/go0$d;

    const-string v1, "getAttributionSource"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/tg;->f:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
