.class public abstract Landroidx/appcompat/view/menu/f5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.content.AttributionSource"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/f5;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "mAttributionSourceState"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/f5;->b:Landroidx/appcompat/view/menu/go0$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getNext"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/f5;->c:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
