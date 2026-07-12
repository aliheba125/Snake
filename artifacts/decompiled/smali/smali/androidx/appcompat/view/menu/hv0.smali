.class public final synthetic Landroidx/appcompat/view/menu/hv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/jv0;

.field public final synthetic n:Landroidx/appcompat/view/menu/wn0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/jv0;Landroidx/appcompat/view/menu/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hv0;->m:Landroidx/appcompat/view/menu/jv0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/hv0;->n:Landroidx/appcompat/view/menu/wn0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/hv0;->m:Landroidx/appcompat/view/menu/jv0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/hv0;->n:Landroidx/appcompat/view/menu/wn0;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/jv0;->u2(Landroidx/appcompat/view/menu/jv0;Landroidx/appcompat/view/menu/wn0;)V

    return-void
.end method
