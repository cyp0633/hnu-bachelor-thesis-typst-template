#import "template.typ"
#import "@preview/mitex:0.2.3"
#import "bilingual-biblography.typ": bilingual-bibliography

#show: template.setup.with(
  title_zh: "基于生成式预训练模型的实验报告撰写系统设计与实现",
  title_en: "Design and Implementation of a Lab Report Writing System Based on Generative Pre-trained Models",
  author: "张忝苟",
  id: "201145141919",
  class: "计算机科学与技术 1145",
  college: "信息科学与工程学院",
  mentor: "沼跃鱼",
  abstract_zh: [
    生成式预训练模型在自然语言处理领域中展现了巨大的潜力。本论文提出了一种基于生成式预训练模型的实验报告撰写系统的设计与实现。该系统利用先进的生成模型，如GPT-3，自动生成实验报告的主要部分，旨在提高科研工作者的效率，并保证报告内容的质量和一致性。系统设计包括数据预处理、模型训练、报告生成和用户交互界面等模块。实验结果表明，该系统能够生成结构合理、内容详实的实验报告，显著减少了科研人员的撰写时间。

    *本文内容大多由 AI 生成，仅作为演示用法之用，请注意甄别。*
  ],
  keywords_zh: "生成式预训练模型；实验报告撰写；系统设计；自然语言处理；GPT-3",
  abstract_en: [
    Generative pre-trained models have demonstrated significant potential in the field of natural language processing. This paper proposes the design and implementation of an experimental report writing system based on generative pre-trained models. The system leverages advanced generative models, such as GPT-3, to automatically generate the main sections of experimental reports, aiming to enhance the efficiency of researchers and ensure the quality and consistency of the report content. The system design includes modules for data preprocessing, model training, report generation, and user interaction interface. Experimental results show that the system can generate well-structured and detailed experimental reports, significantly reducing the writing time for researchers.
  ],
  keywords_en: "Generative pre-trained model; experimental report writing; system design; natural language processing; GPT-3",
)

= 生成式预训练模型简介

生成式预训练模型是一类通过在大量文本数据上进行训练，能够生成自然语言文本的模型。这些模型在训练过程中学习了语言的语法、语义和上下文信息，能够生成连贯且具有逻辑性的文本。目前，生成式预训练模型在各类自然语言处理任务中表现优异，如文本生成、翻译、问答系统等。

在深度学习中，常用的损失函数如@eqt:loss-function 所示。

// 使用 mitex 插件实现 LaTeX 公式兼容。详见 https://typst.app/universe/package/mitex
#mitex.mitex(`\[ L(\theta) = -\frac{1}{N} \sum_{i=1}^{N} \left[ y_i \log \hat{y}_i + (1-y_i) \log (1-\hat{y}_i) \right] \]`)<loss-function>

= 实验报告撰写系统设计

== 数据预处理模块

在系统设计中，数据预处理是关键的一步。我们需要从实验数据中提取出关键信息，并对其进行清洗和整理，使其符合模型输入要求。具体来说，数据预处理包括以下几个步骤：

+ 数据采集：从实验设备和实验日志中获取原始数据。
+ 数据清洗：去除无关或噪音数据，填补缺失数据。
+ 特征提取：提取出实验报告中需要的关键特征，如实验目的、方法、结果和结论等。
+ 数据格式化：将处理后的数据转化为模型可以识别的格式。

== 模型训练模块

模型训练是实验报告撰写系统的核心部分。我们采用了先进的生成式预训练模型，如GPT-3，通过在大量的实验报告数据上进行训练，使模型能够生成高质量的实验报告。在训练过程中，我们采取了以下策略：

+ 数据增强：通过数据增强技术，扩展训练数据集的多样性，提高模型的泛化能力。
+ 模型微调：在预训练模型的基础上，针对实验报告撰写任务进行微调，使模型更好地适应特定领域的语言风格和结构。
+ 评价指标：采用BLEU、ROUGE等评价指标，对模型生成的文本进行质量评估，确保其连贯性和准确性。性能对比见@tbl:performance-comparison。

#figure(caption: "不同生成模型在实验报告生成任务中的性能对比", placement: auto)[
  #table(
    columns: 4,
    rows: 4,
    table.header([模型], [BLEU 得分], [ROUGE 得分], [平均生成时间（秒）]),
    [GPT-2], [25.4], [30.1], [15],
    [GPT-3@brown2020language], [32.6], [38.4], [12],
    [BERT@devlin2019bert], [28.9], [35.7], [18],
  )
]<performance-comparison>

== 报告生成模块

报告生成模块负责将处理后的数据输入到训练好的模型中，并生成完整的实验报告。该模块包括以下功能：

+ 自动生成：根据输入数据，自动生成实验报告的各个部分，包括实验背景、实验步骤、数据分析和结论等。
+ 模板匹配：基于预定义的报告模板，对生成的内容进行排版和格式调整，确保输出报告的规范性和美观性。
+ 用户交互：提供用户界面，允许科研人员对生成的报告进行修改和补充，提高报告的准确性和个性化。

== 用户交互界面模块

用户交互界面是实验报告撰写系统的人机交互部分。通过友好的界面设计，科研人员可以方便地使用系统，查看和编辑生成的报告。该模块的主要功能包括：

+ 报告预览：实时显示生成的实验报告内容，供用户浏览和检查。
+ 编辑工具：提供文本编辑工具，允许用户对报告内容进行修改和补充。
+ 版本管理：记录每次编辑的版本，方便用户进行版本比较和回溯。
+ 导出功能：支持将最终的实验报告导出为多种格式，如PDF、Word等，便于分享和存档。

= 实验与结果

为了验证系统的有效性，我们在多个实验数据集上进行了测试。结果表明，基于生成式预训练模型的实验报告撰写系统在报告生成的质量和效率上均表现优异。具体来说：

+ 生成质量：系统生成的实验报告在结构和内容上均达到了人工撰写的水平，且在逻辑性和连贯性方面表现突出。
+ 撰写效率：相比传统的手工撰写方式，使用本系统可以显著减少科研人员的工作量，平均撰写时间减少了70%以上。
+ 用户满意度：通过用户调查，我们发现大多数科研人员对系统的生成效果和使用体验表示满意，认为其在日常工作中具有很高的实用价值。

// 用于强制让下一段缩进两格。有其他方法避免这个问题，供用户取舍。见：https://github.com/typst/typst/issues/311
#par[#text(size: 0pt)[1]]

系统工作流程如@fig:workflow 所示。

#figure(caption: "系统的工作流程", placement: auto)[
  #image("assets/ezgif-7-98e2f7ecdc.jpg")
]<workflow>

= 结论

本论文提出了一种基于生成式预训练模型的实验报告撰写系统，并对其设计与实现进行了详细阐述。实验结果表明，该系统能够有效提高实验报告撰写的效率和质量，具有广泛的应用前景。未来，我们计划进一步优化模型的性能，增强系统的交互功能，以更好地满足科研人员的需求。

= 致谢

在本文的研究和写作过程中，得到了许多同事和朋友的支持和帮助。在此特别感谢我的导师和同事们的宝贵意见和建议。同时，感谢提供数据支持和技术支持的各个单位和个人。

// 用于更好地支持标准参考文献格式，详见 bilingual-biblography.typ
#bilingual-bibliography(bibliography: bibliography.with("example.bib"), full: true)