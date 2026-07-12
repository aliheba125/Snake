.class public final synthetic Landroidx/appcompat/view/menu/el;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/lang/Runnable;

.field public final synthetic n:Landroidx/appcompat/view/menu/gl$b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/gl$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/el;->m:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/appcompat/view/menu/el;->n:Landroidx/appcompat/view/menu/gl$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/el;->m:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/appcompat/view/menu/el;->n:Landroidx/appcompat/view/menu/gl$b;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/fl;->h(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/gl$b;)V

    return-void
.end method
