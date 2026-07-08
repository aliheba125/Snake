.class public Landroidx/appcompat/view/menu/aw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/aw;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ljava/util/ArrayList;

.field public final synthetic p:Ljava/util/ArrayList;

.field public final synthetic q:Ljava/util/ArrayList;

.field public final synthetic r:Landroidx/appcompat/view/menu/aw;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/aw;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/aw$a;->r:Landroidx/appcompat/view/menu/aw;

    iput p2, p0, Landroidx/appcompat/view/menu/aw$a;->m:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/aw$a;->n:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/appcompat/view/menu/aw$a;->o:Ljava/util/ArrayList;

    iput-object p5, p0, Landroidx/appcompat/view/menu/aw$a;->p:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/appcompat/view/menu/aw$a;->q:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/appcompat/view/menu/aw$a;->m:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/aw$a;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/view/menu/aw$a;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/m51;->A0(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/aw$a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/view/menu/aw$a;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/m51;->A0(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
