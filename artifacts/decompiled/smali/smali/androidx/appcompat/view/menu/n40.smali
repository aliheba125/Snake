.class public abstract Landroidx/appcompat/view/menu/n40;
.super Landroidx/appcompat/view/menu/a8;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/n40$a;
    }
.end annotation


# instance fields
.field public final transient m:Landroidx/appcompat/view/menu/m40;

.field public final transient n:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/m40;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/a8;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/n40;->m:Landroidx/appcompat/view/menu/m40;

    iput p2, p0, Landroidx/appcompat/view/menu/n40;->n:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/n40;->c()Landroidx/appcompat/view/menu/m40;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/m;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Landroidx/appcompat/view/menu/m40;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/n40;->m:Landroidx/appcompat/view/menu/m40;

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/m;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
