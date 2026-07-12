.class public final Landroidx/appcompat/view/menu/jo0$b;
.super Landroidx/appcompat/view/menu/o40;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/jo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final transient o:Landroidx/appcompat/view/menu/m40;

.field public final transient p:Landroidx/appcompat/view/menu/l40;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m40;Landroidx/appcompat/view/menu/l40;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o40;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/jo0$b;->o:Landroidx/appcompat/view/menu/m40;

    iput-object p2, p0, Landroidx/appcompat/view/menu/jo0$b;->p:Landroidx/appcompat/view/menu/l40;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$b;->o:Landroidx/appcompat/view/menu/m40;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/m40;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jo0$b;->k()Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/l40;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jo0$b;->z()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/appcompat/view/menu/l40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$b;->p:Landroidx/appcompat/view/menu/l40;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/jo0$b;->o:Landroidx/appcompat/view/menu/m40;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public z()Landroidx/appcompat/view/menu/t31;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/jo0$b;->k()Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l40;->r()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method
