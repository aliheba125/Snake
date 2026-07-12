.class public abstract Landroidx/appcompat/view/menu/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;

.field public static c:Landroidx/appcompat/view/menu/go0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.android.internal.infra.AndroidFuture"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/f2;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "complete"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/f2;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->c([Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/f2;->c:Landroidx/appcompat/view/menu/go0$a;

    return-void
.end method
