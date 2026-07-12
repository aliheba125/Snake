.class public Landroidx/appcompat/view/menu/nu$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/iu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/nu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/nu;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/nu;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu$c;->a:Landroidx/appcompat/view/menu/nu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu$c;->a:Landroidx/appcompat/view/menu/nu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/nu;->g(Landroidx/appcompat/view/menu/nu;Z)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu$c;->a:Landroidx/appcompat/view/menu/nu;

    invoke-static {v0}, Landroidx/appcompat/view/menu/nu;->h(Landroidx/appcompat/view/menu/nu;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/iu;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/iu;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu$c;->a:Landroidx/appcompat/view/menu/nu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/nu;->g(Landroidx/appcompat/view/menu/nu;Z)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu$c;->a:Landroidx/appcompat/view/menu/nu;

    invoke-static {v0}, Landroidx/appcompat/view/menu/nu;->h(Landroidx/appcompat/view/menu/nu;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/iu;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/iu;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method
