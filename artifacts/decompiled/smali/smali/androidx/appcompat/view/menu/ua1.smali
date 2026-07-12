.class public final Landroidx/appcompat/view/menu/ua1;
.super Landroidx/appcompat/view/menu/d71;
.source "SourceFile"


# instance fields
.field public final n:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/av;Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which is not a FragmentContainerView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/d71;-><init>(Landroidx/appcompat/view/menu/av;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/ua1;->n:Landroid/view/ViewGroup;

    return-void
.end method
