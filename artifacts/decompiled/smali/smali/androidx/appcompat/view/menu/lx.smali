.class public Landroidx/appcompat/view/menu/lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/yw0;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/bz0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/bz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/lx;->a:Landroidx/appcompat/view/menu/bz0;

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/ai0;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lx;->a:Landroidx/appcompat/view/menu/bz0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ai0;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bz0;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
