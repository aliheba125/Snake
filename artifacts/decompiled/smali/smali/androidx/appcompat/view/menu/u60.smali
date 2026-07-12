.class public abstract Landroidx/appcompat/view/menu/u60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.app.job.JobInfo"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u60;->a:Landroidx/appcompat/view/menu/go0;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u60;->b:Landroidx/appcompat/view/menu/go0$b;

    return-void
.end method
