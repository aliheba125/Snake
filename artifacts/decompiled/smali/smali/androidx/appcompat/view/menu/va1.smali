.class public final Landroidx/appcompat/view/menu/va1;
.super Landroidx/appcompat/view/menu/d71;
.source "SourceFile"


# instance fields
.field public final n:Landroidx/appcompat/view/menu/av;

.field public final o:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/av;I)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedParentFragment"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to nest fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " within the view of parent fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " via container with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without using parent\'s childFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/d71;-><init>(Landroidx/appcompat/view/menu/av;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/va1;->n:Landroidx/appcompat/view/menu/av;

    iput p3, p0, Landroidx/appcompat/view/menu/va1;->o:I

    return-void
.end method
