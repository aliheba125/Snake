.class public final synthetic Landroidx/appcompat/view/menu/vv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Landroidx/appcompat/view/menu/d71;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/d71;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/vv;->m:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/vv;->n:Landroidx/appcompat/view/menu/d71;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/vv;->m:Ljava/lang/String;

    iget-object v1, p0, Landroidx/appcompat/view/menu/vv;->n:Landroidx/appcompat/view/menu/d71;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/wv;->a(Ljava/lang/String;Landroidx/appcompat/view/menu/d71;)V

    return-void
.end method
