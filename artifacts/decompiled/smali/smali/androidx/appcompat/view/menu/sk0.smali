.class public abstract Landroidx/appcompat/view/menu/sk0;
.super Landroidx/appcompat/view/menu/l9;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/p70;


# instance fields
.field public final t:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/view/menu/l9;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x2

    and-int/lit8 p2, p5, 0x2

    if-ne p2, p1, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/sk0;->t:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/j70;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/sk0;->t:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/view/menu/l9;->a()Landroidx/appcompat/view/menu/j70;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/sk0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/appcompat/view/menu/sk0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->g()Landroidx/appcompat/view/menu/m70;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l9;->g()Landroidx/appcompat/view/menu/m70;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l9;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l9;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l9;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, Landroidx/appcompat/view/menu/p70;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sk0;->a()Landroidx/appcompat/view/menu/j70;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->g()Landroidx/appcompat/view/menu/m70;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sk0;->a()Landroidx/appcompat/view/menu/j70;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l9;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
