.class public abstract Landroidx/appcompat/view/menu/z60;
.super Landroidx/appcompat/view/menu/pd;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/mm;
.implements Landroidx/appcompat/view/menu/t40;


# instance fields
.field public p:Landroidx/appcompat/view/menu/b70;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/pd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/b70;->v0(Landroidx/appcompat/view/menu/z60;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Landroidx/appcompat/view/menu/ze0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z60;->x()Landroidx/appcompat/view/menu/b70;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/hj;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Landroidx/appcompat/view/menu/b70;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z60;->p:Landroidx/appcompat/view/menu/b70;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y(Landroidx/appcompat/view/menu/b70;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z60;->p:Landroidx/appcompat/view/menu/b70;

    return-void
.end method
