.class public final Landroidx/appcompat/view/menu/vu0;
.super Landroidx/appcompat/view/menu/o40;
.source "SourceFile"


# instance fields
.field public final transient o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o40;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/nj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/vu0;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu0;->o:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu0;->o:Ljava/lang/Object;

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu0;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vu0;->z()Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu0;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Landroidx/appcompat/view/menu/t31;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/vu0;->o:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/appcompat/view/menu/j60;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/t31;

    move-result-object v0

    return-object v0
.end method
