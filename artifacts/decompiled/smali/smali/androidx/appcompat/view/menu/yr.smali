.class public final synthetic Landroidx/appcompat/view/menu/yr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/as;

.field public final synthetic n:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/as;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/yr;->m:Landroidx/appcompat/view/menu/as;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/yr;->n:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/yr;->m:Landroidx/appcompat/view/menu/as;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/yr;->n:Z

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/as;->e(Landroidx/appcompat/view/menu/as;Z)V

    return-void
.end method
