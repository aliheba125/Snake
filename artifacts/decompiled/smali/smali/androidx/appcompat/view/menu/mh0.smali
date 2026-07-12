.class public abstract Landroidx/appcompat/view/menu/mh0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$a;

.field public static c:Landroidx/appcompat/view/menu/go0$a;

.field public static d:Landroidx/appcompat/view/menu/go0$d;

.field public static e:Landroidx/appcompat/view/menu/go0$d;

.field public static f:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.content.pm.ParceledListSlice"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/mh0;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/mh0;->b:Landroidx/appcompat/view/menu/go0$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/List;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/view/menu/mh0;->c:Landroidx/appcompat/view/menu/go0$a;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v1

    const-string v4, "append"

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/view/menu/mh0;->d:Landroidx/appcompat/view/menu/go0$d;

    const-string v3, "getList"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/view/menu/mh0;->e:Landroidx/appcompat/view/menu/go0$d;

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const-string v1, "setLastSlice"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/mh0;->f:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
