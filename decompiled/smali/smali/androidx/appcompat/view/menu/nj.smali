.class public abstract Landroidx/appcompat/view/menu/nj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Landroidx/appcompat/view/menu/sk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ty0;->f(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroidx/appcompat/view/menu/nj;->a:Z

    invoke-static {}, Landroidx/appcompat/view/menu/nj;->b()Landroidx/appcompat/view/menu/sk;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/nj;->b:Landroidx/appcompat/view/menu/sk;

    return-void
.end method

.method public static final a()Landroidx/appcompat/view/menu/sk;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/nj;->b:Landroidx/appcompat/view/menu/sk;

    return-object v0
.end method

.method public static final b()Landroidx/appcompat/view/menu/sk;
    .locals 2

    sget-boolean v0, Landroidx/appcompat/view/menu/nj;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/mj;->u:Landroidx/appcompat/view/menu/mj;

    return-object v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/fm;->c()Landroidx/appcompat/view/menu/qa0;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/ta0;->c(Landroidx/appcompat/view/menu/qa0;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Landroidx/appcompat/view/menu/sk;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Landroidx/appcompat/view/menu/sk;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroidx/appcompat/view/menu/mj;->u:Landroidx/appcompat/view/menu/mj;

    :goto_1
    return-object v0
.end method
