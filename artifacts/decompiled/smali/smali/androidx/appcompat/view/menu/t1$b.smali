.class public abstract Landroidx/appcompat/view/menu/t1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$b;

.field public static f:Landroidx/appcompat/view/menu/go0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.app.ActivityThread$AppBindData"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t1$b;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "appInfo"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t1$b;->b:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t1$b;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "instrumentationName"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t1$b;->d:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "processName"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/t1$b;->e:Landroidx/appcompat/view/menu/go0$b;

    const-string v1, "providers"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/t1$b;->f:Landroidx/appcompat/view/menu/go0$b;

    return-void
.end method
