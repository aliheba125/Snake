.class public final synthetic Landroidx/appcompat/view/menu/iv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/jv0;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Landroid/os/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/jv0;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/iv0;->m:Landroidx/appcompat/view/menu/jv0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/iv0;->n:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/iv0;->o:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/iv0;->p:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/iv0;->m:Landroidx/appcompat/view/menu/jv0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/iv0;->n:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/iv0;->o:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/iv0;->p:Landroid/os/ConditionVariable;

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/jv0;->j(Landroidx/appcompat/view/menu/jv0;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    return-void
.end method
