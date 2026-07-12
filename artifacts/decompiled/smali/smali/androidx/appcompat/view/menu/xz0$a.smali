.class public Landroidx/appcompat/view/menu/xz0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/kd0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/xz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/xz0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/xz0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroidx/appcompat/view/menu/id0;Landroidx/appcompat/view/menu/kd0$d;)V
    .locals 13

    const-string v0, "data"

    iget-object v1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {v1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/id0;->a:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/id0;->b:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextInputChannel"

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "TextInput.requestAutofill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "TextInput.clearClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "TextInput.finishAutofillContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "TextInput.setEditableSizeAndTransform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "TextInput.sendAppPrivateCommand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "TextInput.show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "TextInput.hide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "TextInput.setClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "TextInput.setEditingState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v5, v3

    goto :goto_0

    :sswitch_9
    const-string v2, "TextInput.setPlatformViewClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move v5, v4

    :goto_0
    const-string v1, "error"

    const/4 v2, 0x0

    packed-switch v5, :pswitch_data_0

    invoke-interface {p2}, Landroidx/appcompat/view/menu/kd0$d;->a()V

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xz0$f;->h()V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xz0$f;->b()V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xz0$f;->i(Z)V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v0, "transform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/16 v0, 0x10

    new-array v10, v0, [D

    :goto_1
    if-ge v4, v0, :cond_b

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    aput-wide v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object v5

    invoke-interface/range {v5 .. v10}, Landroidx/appcompat/view/menu/xz0$f;->f(DD[D)V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    :try_start_1
    check-cast p1, Lorg/json/JSONObject;

    const-string v3, "action"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_c
    move-object v4, v2

    :goto_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Landroidx/appcompat/view/menu/xz0$f;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xz0$f;->a()V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xz0$f;->j()V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_7
    :try_start_2
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {v3}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object v3

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0$b;->a(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/xz0$b;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Landroidx/appcompat/view/menu/xz0$f;->c(ILandroidx/appcompat/view/menu/xz0$b;)V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_8
    :try_start_3
    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/xz0$e;->a(Lorg/json/JSONObject;)Landroidx/appcompat/view/menu/xz0$e;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xz0$f;->g(Landroidx/appcompat/view/menu/xz0$e;)V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_9
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "platformViewId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "usesVirtualDisplay"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v3, p0, Landroidx/appcompat/view/menu/xz0$a;->a:Landroidx/appcompat/view/menu/xz0;

    invoke-static {v3}, Landroidx/appcompat/view/menu/xz0;->a(Landroidx/appcompat/view/menu/xz0;)Landroidx/appcompat/view/menu/xz0$f;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroidx/appcompat/view/menu/xz0$f;->e(IZ)V

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kd0$d;->c(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1, v2}, Landroidx/appcompat/view/menu/kd0$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_9
        -0x3c861a16 -> :sswitch_8
        -0x23d2364 -> :sswitch_7
        0x101f2613 -> :sswitch_6
        0x102423ce -> :sswitch_5
        0x26b1e570 -> :sswitch_4
        0x47cf0f0b -> :sswitch_3
        0x66f8a3d9 -> :sswitch_2
        0x71834287 -> :sswitch_1
        0x7df775f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
