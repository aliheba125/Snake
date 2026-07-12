.class public abstract Landroidx/appcompat/view/menu/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/e1$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$e;

.field public static d:Landroidx/appcompat/view/menu/go0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.ActivityClient"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/e1;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "INTERFACE_SINGLETON"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/e1;->b:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/e1;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "getActivityClientController"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/e1;->d:Landroidx/appcompat/view/menu/go0$e;

    return-void
.end method
